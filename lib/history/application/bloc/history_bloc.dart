import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:fast_shopping/catalog/infrastructure/product_repository.dart';
import 'package:fast_shopping/models/fs_order.dart';
import 'package:fast_shopping/models/fs_product.dart';
import 'package:fast_shopping/models/fs_user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'history_bloc.freezed.dart';
part 'history_event.dart';
part 'history_state.dart';

@injectable
class HistoryBloc extends Bloc<HistoryEvent, HistoryState> {
  HistoryBloc({
    required this.productRepository,
  }) : super(const HistoryState()) {
    on<GetUser>(_getUser);
    on<GetProducts>(_getProducts);
    on<DeleteProduct>(_deleteProduct);
    on<EmitUser>(_emitUser);
    on<EmitProduct>(_emitProduct);
    add(const GetUser());
  }

  final ProductRepository productRepository;

  late final StreamSubscription<List<FSOrder?>> _productStream;

  Future<void> _getUser(GetUser event, Emitter<HistoryState> emit) async {
    final user = await productRepository.getUser();

    productRepository.getUserStream(user.uid).listen((event) {
      add(EmitUser(user));
    });
  }

  Future<void> _getProducts(
      GetProducts event, Emitter<HistoryState> emit) async {
    _productStream = productRepository.getOrdersStream().listen((event) {
      add(EmitProduct(event));
    });
  }

  Future<void> _emit(List<FSProduct> list) async {}

  @override
  void dispose() {
    _productStream.cancel();
  }

  Future<void> _deleteProduct(
    DeleteProduct event,
    Emitter<HistoryState> emit,
  ) async {
    if (state.user != null) {
      List<String> oldBasket = state.user!.productsHistory;

      for (String product in state.user!.productsHistory) {
        if (product == event.id) {
          oldBasket.remove(product);
          break;
        }

        await productRepository
            .updateUser(state.user!.copyWith(productsHistory: oldBasket));
        await productRepository.deleteOrder(event.id);
        add(EmitUser(state.user!));
      }
    } else {
      final user = await productRepository.getUser();

      user.products.remove(event.id);
      await productRepository.updateUser(user);
      add(EmitUser(user));
    }
  }

  Future<void> _emitUser(EmitUser event, Emitter<HistoryState> emit) async {
    List<FSProduct> sortList = [];
    List<FSOrder> sortListOrders = [];

    final user = await productRepository.getUser();

    for (String basket in user.productsHistory) {
      for (FSOrder product in await productRepository.getOrdersStream().first) {
        if (basket == product.orderId) {
          sortList.add(await productRepository.getProduct(product.productId));
          sortListOrders.add(product);
        }
      }
    }
    emit(state.copyWith(
      products: sortList,
      orders: sortListOrders,
      user: await productRepository.getUser(),
    ));
  }

  FutureOr<void> _emitProduct(
      EmitProduct event, Emitter<HistoryState> emit) async {
    List<FSProduct> sortList = [];
    List<FSOrder> sortListOrders = [];

    if (state.user == null) {
      final user = await productRepository.getUser();

      for (String basket in user.productsHistory) {
        for (FSOrder product in event.product) {
          if (basket == product.orderId) {
            sortList.add(await productRepository.getProduct(product.productId));
            sortListOrders.add(product);
          }
        }
      }
    } else {
      for (String basket in state.user!.productsHistory) {
        for (FSOrder product in event.product) {
          if (basket == product.orderId) {
            sortList.add(await productRepository.getProduct(product.productId));
            sortListOrders.add(product);
          }
        }
      }
    }
    emit(state.copyWith(
      products: sortList,
      orders: sortListOrders,
      user: await productRepository.getUser(),
    ));
  }
}
