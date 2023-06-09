import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:fast_shopping/catalog/infrastructure/product_repository.dart';
import 'package:fast_shopping/login/infrastructure/auth_repository.dart';
import 'package:fast_shopping/models/fs_order.dart';
import 'package:fast_shopping/models/fs_product.dart';
import 'package:fast_shopping/models/fs_user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';

part 'catalog_bloc.freezed.dart';
part 'catalog_event.dart';
part 'catalog_state.dart';

@injectable
class CatalogBloc extends Bloc<CatalogEvent, CatalogState> {
  CatalogBloc({
    required AuthRepository authRepository,
    required this.productRepository,
  })  : _authRepository = authRepository,
        super(const CatalogState()) {
    on<GetUser>(_getUser);
    on<GetProducts>(_getProducts);
    on<BuyProduct>(_buyProduct);
    on<DeleteProduct>(_deleteProduct);
  }
  final AuthRepository _authRepository;
  final ProductRepository productRepository;

  late final StreamSubscription<List<FSProduct?>> _productStream;

  Future<void> _getUser(GetUser event, Emitter<CatalogState> emit) async {
    emit(state.copyWith(user: await _authRepository.getUser()));
  }

  Future<void> _getProducts(
      GetProducts event, Emitter<CatalogState> emit) async {
    _productStream = productRepository.getProductsStream().listen((event) {
      _emit(event);
    });
  }

  Future<void> _emit(List<FSProduct> list) async {
    emit(state.copyWith(products: list, user: await _authRepository.getUser()));
  }

  @override
  void dispose() {
    _productStream.cancel();
  }

  Future<void> _buyProduct(BuyProduct event, Emitter<CatalogState> emit) async {
    final f = DateFormat('yyyy-MM-dd hh:mm');

    final user = await _authRepository.getUser();
    if (user != null) {
      final order = await productRepository.buyProduct(FSOrder(
          orderId: '',
          productId: event.product,
          date: f.format(DateTime.now())));

      List<String> products = [...user.products, order.orderId];
      final newUser = user.copyWith(products: products);
      final updateUser = await productRepository.updateUser(newUser);
      emit(state.copyWith(user: newUser));
    }
  }

  Future<void> _deleteProduct(
      DeleteProduct event, Emitter<CatalogState> emit) async {
    productRepository.deleteProduct(event.id);
    emit(state.copyWith(
        products: await productRepository.getProductsStream().first));
  }
}
