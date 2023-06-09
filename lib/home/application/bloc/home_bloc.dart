import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:fast_shopping/catalog/infrastructure/product_repository.dart';
import 'package:fast_shopping/login/infrastructure/auth_repository.dart';
import 'package:fast_shopping/models/fs_order.dart';
import 'package:fast_shopping/models/fs_product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc({
    required AuthRepository authRepository,
    required this.productRepository,
  })  : _authRepository = authRepository,
        super(const HomeState()) {
    on<GetProduct>(_getProduct);
    on<BuyProduct>(_buyProduct);
  }
  final AuthRepository _authRepository;
  final ProductRepository productRepository;

  late final StreamSubscription<List<FSProduct?>> _productStream;

  Future<void> _getProduct(GetProduct event, Emitter<HomeState> emit) async {
    emit(state.copyWith(isLoading: true));
    FSProduct product = await productRepository.getProduct(event.productId);
    emit(state.copyWith(product: product, isLoading: false));
  }

  @override
  void dispose() {
    _productStream.cancel();
  }

  Future<void> _buyProduct(BuyProduct event, Emitter<HomeState> emit) async {
    final user = await _authRepository.getUser();
    final f = DateFormat('yyyy-MM-dd hh:mm');
    if (user != null) {
      final order = await productRepository.buyProduct(FSOrder(
          orderId: '',
          productId: event.productId,
          date: f.format(DateTime.now())));
      List<String> products = [...user.products, order.orderId];
      final newUser = user.copyWith(products: products);
      final updateUser = await productRepository.updateUser(newUser);
    }
  }
}
