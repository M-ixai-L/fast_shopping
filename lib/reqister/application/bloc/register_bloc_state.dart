part of 'register_bloc.dart';

@freezed
class RegisterBlocState with _$RegisterBlocState {
  const factory RegisterBlocState({
    FSUser? user,
    @Default(false) bool isLoading,
  }) = RegisterBlocState$;
}
