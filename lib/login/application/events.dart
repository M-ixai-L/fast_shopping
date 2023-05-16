part of auth_bloc;

abstract class AuthEvent {
  const AuthEvent();
}

@freezed
class CheckAuthorization with _$CheckAuthorization implements AuthEvent {
  const factory CheckAuthorization() = CheckAuthorization$;
}

@freezed
class SignInWithGoogle with _$SignInWithGoogle implements AuthEvent {
  const factory SignInWithGoogle() = SignInWithGoogle$;
}

@freezed
class Logout with _$Logout implements AuthEvent {
  const factory Logout() = Logout$;
}
