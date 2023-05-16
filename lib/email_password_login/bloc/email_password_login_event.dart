part of 'email_password_login_bloc.dart';

@freezed
class EmailPasswordLoginEvent with _$EmailPasswordLoginEvent {
  const factory EmailPasswordLoginEvent.login(
      {required String email, required String password}) = Login;
}
