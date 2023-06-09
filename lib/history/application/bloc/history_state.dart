part of 'history_bloc.dart';

@freezed
class HistoryState with _$HistoryState {
  const factory HistoryState({
    @Default([]) List<FSProduct> products,
    @Default([]) List<FSOrder> orders,
    FSUser? user,
    @Default(false) bool isLoading,
  }) = _HistoryState$;
}
