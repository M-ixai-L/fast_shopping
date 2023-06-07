part of 'catalog_bloc.dart';

@freezed
class CatalogEvent with _$CatalogEvent {
  const factory CatalogEvent.getUser() = GetUser;
  const factory CatalogEvent.getProducts() = GetProducts;
  const factory CatalogEvent.buyProduct(String product) = BuyProduct;
  const factory CatalogEvent.deleteProduct(String id) = DeleteProduct;
  const factory CatalogEvent.addProduct(FSProduct product) = AddProduct;
}
