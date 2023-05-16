part of 'email_password_login_bloc.dart';

@freezed
class EmailPasswordLoginState with _$EmailPasswordLoginState {
  const factory EmailPasswordLoginState({
    @Default(false) bool isLoading,
    @Default(false) bool isSuccess,
    @Default(false) bool isError,
  }) = EmailPasswordLoginState$;
}
