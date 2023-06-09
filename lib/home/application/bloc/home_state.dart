part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    FSProduct? product,
    @Default(false) bool isLoading,
  }) = _HomeState$;
}
