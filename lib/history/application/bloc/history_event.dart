part of 'history_bloc.dart';

@freezed
class HistoryEvent with _$HistoryEvent {
  const factory HistoryEvent.getUser() = GetUser;
  const factory HistoryEvent.getProducts() = GetProducts;
  const factory HistoryEvent.payProduct(String product) = PayProduct;
  const factory HistoryEvent.deleteProduct(String id) = DeleteProduct;
  const factory HistoryEvent.emitUser(FSUser user) = EmitUser;
  const factory HistoryEvent.emitProduct(List<FSOrder> product) = EmitProduct;
}
