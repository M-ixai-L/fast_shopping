part of auth_bloc;

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    AppUser? user,
    @Default(false) bool isLoading,
    @Default(false) bool checkFirebaseAuthentication,
    @Default(false) bool checkCloudAuthentication,
  }) = LoginState$;
}
