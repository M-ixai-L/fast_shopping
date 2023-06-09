part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.getProduct(String productId) = GetProduct;
  const factory HomeEvent.buyProduct(String productId) = BuyProduct;
}
