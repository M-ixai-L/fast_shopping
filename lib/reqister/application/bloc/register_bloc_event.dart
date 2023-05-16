part of 'register_bloc.dart';

@freezed
class RegisterBlocEvent with _$RegisterBlocEvent {
  const factory RegisterBlocEvent.registerNewUser(
    String email,
    String password,
    String firstName,
    String lastName,
  ) = RegisterNewUser;

  const factory RegisterBlocEvent.registerNewUserWithUid(
    String email,
    String uid,
    String firstName,
    String lastName,
  ) = RegisterNewUserWithUid;
}
