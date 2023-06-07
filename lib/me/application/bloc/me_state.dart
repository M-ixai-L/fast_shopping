part of 'me_bloc.dart';

@freezed
class MeState with _$MeState {
  const factory MeState({
    FSUser? user,
    @Default(false) bool isLoading,
  }) = _MeState$;
}
