part of 'catalog_bloc.dart';

@freezed
class CatalogState with _$CatalogState {
  const factory CatalogState({
    @Default([]) List<FSProduct> products,
    FSUser? user,
    @Default(false) bool isLoading,
  }) = _CatalogState$;
}
