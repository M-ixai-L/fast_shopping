import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:fast_shopping/catalog/infrastructure/product_repository.dart';
import 'package:fast_shopping/models/fs_product.dart';
import 'package:fast_shopping/models/fs_user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

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

  late final StreamSubscription<List<FSProduct?>> _productStream;

  Future<void> _getUser(GetUser event, Emitter<BasketState> emit) async {
    final user = await productRepository.getUser();

    productRepository.getUserStream(user.uid).listen((event) {
      add(EmitUser(user));
    });
  }

  Future<void> _getProducts(
      GetProducts event, Emitter<BasketState> emit) async {
    _productStream = productRepository.getProductsStream().listen((event) {
      add(EmitProduct(event));
    });
  }

  Future<void> _emit(List<FSProduct> list) async {}

  @override
  void dispose() {
    _productStream.cancel();
  }

  Future<void> _payProduct(PayProduct event, Emitter<BasketState> emit) async {
    if (state.user == null) {
      final user = await productRepository.getUser();

      List<String> products = [...user.products, event.product];
      final newUser = user.copyWith(productsHistory: products);
      await productRepository.buyProduct(newUser);
      add(EmitUser(user));
    } else {
      List<String> products = [...state.user!.products, event.product];
      final newUser = state.user!.copyWith(products: products);
      await productRepository.buyProduct(newUser);
      add(EmitUser(state.user!));
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
      add(EmitUser(state.user!));
    } else {
      final user = await productRepository.getUser();
      if (user != null) {
        user.products.remove(event.id);
        await productRepository.updateUser(user);
        add(EmitUser(user));
      }
    }
  }

  Future<void> _emitUser(EmitUser event, Emitter<BasketState> emit) async {
    final user = await productRepository.getUser();
    List<FSProduct> sortList = [];

    for (String basket in user.products) {
      for (FSProduct product
          in await productRepository.getProductsStream().first) {
        if (basket == product.id) {
          sortList.add(product);
        }
      }
    }

    emit(state.copyWith(user: user, products: sortList));
  }

  FutureOr<void> _emitProduct(
      EmitProduct event, Emitter<BasketState> emit) async {
    List<FSProduct> sortList = [];
    if (state.user == null) {
      final user = await productRepository.getUser();
      if (user != null) {
        for (String basket in user.products) {
          for (FSProduct product in event.product) {
            if (basket == product.id) {
              sortList.add(product);
            }
          }
        }
      }
    } else {
      for (String basket in state.user!.products) {
        for (FSProduct product in event.product) {
          if (basket == product.id) {
            sortList.add(product);
          }
        }
      }
    }

    emit(state.copyWith(
      products: sortList,
      user: await productRepository.getUser(),
    ));
  }
}
