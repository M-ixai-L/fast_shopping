part of 'basket_bloc.dart';

@freezed
class BasketState with _$BasketState {
  const factory BasketState({
    @Default([]) List<FSProduct> products,
    @Default([]) List<FSOrder> orders,
    FSUser? user,
    @Default(false) bool isLoading,
  }) = _BasketState$;
}
