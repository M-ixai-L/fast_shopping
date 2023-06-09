part of 'basket_bloc.dart';

@freezed
class BasketEvent with _$BasketEvent {
  const factory BasketEvent.getUser() = GetUser;
  const factory BasketEvent.getProducts() = GetProducts;
  const factory BasketEvent.payProduct(String product) = PayProduct;
  const factory BasketEvent.deleteProduct(String id) = DeleteProduct;
  const factory BasketEvent.emitUser(FSUser user) = EmitUser;
  const factory BasketEvent.emitProduct(List<FSOrder> product) = EmitProduct;
}
