import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:fast_shopping/catalog/infrastructure/product_repository.dart';
import 'package:fast_shopping/models/fs_order.dart';
import 'package:fast_shopping/models/fs_product.dart';
import 'package:fast_shopping/models/fs_user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';

part 'basket_bloc.freezed.dart';
part 'basket_event.dart';
part 'basket_state.dart';

@injectable
class BasketBloc extends Bloc<BasketEvent, BasketState> {
  BasketBloc({
    required this.productRepository,
  }) : super(const BasketState()) {
    on<GetUser>(_getUser);
    on<GetProducts>(_getProducts);
    on<PayProduct>(_payProduct);
    on<DeleteProduct>(_deleteProduct);
    on<EmitUser>(_emitUser);
    on<EmitProduct>(_emitProduct);
    add(const GetUser());
  }

  final ProductRepository productRepository;

  late final StreamSubscription<List<FSOrder?>> _productStream;

  Future<void> _getUser(GetUser event, Emitter<BasketState> emit) async {
    final user = await productRepository.getUser();

    productRepository.getUserStream(user.uid).listen((event) {
      add(EmitUser(user));
    });
  }

  Future<void> _getProducts(
      GetProducts event, Emitter<BasketState> emit) async {
    _productStream = productRepository.getOrdersStream().listen((event) {
      add(EmitProduct(event));
    });
  }

  Future<void> _emit(List<FSProduct> list) async {}

  @override
  void dispose() {
    _productStream.cancel();
  }

  Future<void> _payProduct(PayProduct event, Emitter<BasketState> emit) async {
    final f = DateFormat('yyyy-MM-dd hh:mm');
    List<String> productsHistory = [];
    List<String> products = [];

    if (state.user == null) {
      final FSUser user = await productRepository.getUser();

      productsHistory.addAll(user.productsHistory);
      products.addAll(user.products);
      FSOrder oldOrder = state.orders
          .firstWhere((element) => element.orderId == event.product);

      final order = await productRepository.buyProduct(FSOrder(
          orderId: '',
          productId: oldOrder.productId,
          date: f.format(DateTime.now())));

      productsHistory.add(order.orderId);

      products.remove(oldOrder.orderId);
      await productRepository.deleteOrder(order.orderId);
      final newUser =
          user.copyWith(productsHistory: productsHistory, products: products);
      final updateUser = await productRepository.updateUser(newUser);
    } else {
      final FSUser user = await productRepository.getUser();

      productsHistory.addAll(user.productsHistory);
      products.addAll(user.products);
      FSOrder oldOrder = state.orders
          .firstWhere((element) => element.orderId == event.product);

      final order = await productRepository.buyProduct(FSOrder(
          orderId: '',
          productId: oldOrder.productId,
          date: f.format(DateTime.now())));
      productsHistory.add(order.orderId);

      products.remove(oldOrder.orderId);
      await productRepository.deleteOrder(oldOrder.orderId);
      final newUser =
          user.copyWith(productsHistory: productsHistory, products: products);
      final updateUser = await productRepository.updateUser(newUser);
    }
  }

  Future<void> _deleteProduct(
    DeleteProduct event,
    Emitter<BasketState> emit,
  ) async {
    if (state.user != null) {
      List<String> newBasket = state.user!.products;
      newBasket.remove(event.id);
      await productRepository
          .updateUser(state.user!.copyWith(products: newBasket));
      await productRepository.deleteOrder(event.id);
    } else {
      final user = await productRepository.getUser();
      user.products.remove(event.id);
      await productRepository.updateUser(user);
      await productRepository.deleteOrder(event.id);
    }
  }

  Future<void> _emitUser(EmitUser event, Emitter<BasketState> emit) async {
    List<FSProduct> sortList = [];
    List<FSOrder> sortListOrders = [];

    final user = await productRepository.getUser();

    for (String basket in user.products) {
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
      EmitProduct event, Emitter<BasketState> emit) async {
    List<FSProduct> sortList = [];
    List<FSOrder> sortListOrders = [];
    if (state.user == null) {
      final user = await productRepository.getUser();

      for (String basket in user.products) {
        for (FSOrder product in event.product) {
          if (basket == product.orderId) {
            sortList.add(await productRepository.getProduct(product.productId));
            sortListOrders.add(product);
          }
        }
      }
    } else {
      for (String basket in state.user!.products) {
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
