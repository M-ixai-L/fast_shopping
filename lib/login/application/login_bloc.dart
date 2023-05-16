part of auth_bloc;

@injectable
class LoginBloc extends Bloc<AuthEvent, LoginState> {
  LoginBloc({
    required AuthRepository auth,
  })  : _auth = auth,
        super(const LoginState()) {
    on<SignInWithGoogle>(_signInWithGoogle);
    on<Logout>(_logout);
    on<CheckAuthorization>(_checkAuthorization);
  }

  final AuthRepository _auth;

  late final StreamSubscription<User?> _userStream;

  Future<void> _checkAuthorization(
    CheckAuthorization event,
    Emitter<LoginState> emit,
  ) async {
    final secureState = state.copyWith();
    emit(state.copyWith(isLoading: true));
    try {
      _userStream = _auth.currentUserStream().listen((User? user) async {
        if (user == null) {
          emitUser(state.copyWith(
            checkFirebaseAuthentication: false,
            isLoading: false,
          ));
          return;
        }

        final bool checkCloudAuthentication =
            await _auth.checkUserInDataBase(user.uid);

        emitUser(state.copyWith(
          isLoading: false,
          checkFirebaseAuthentication: true,
          user: AppUser(uid: user.uid, email: user.email!),
          checkCloudAuthentication: checkCloudAuthentication,
        ));
      });
    } on FirebaseAuthException catch (_) {
      emit(secureState);
      emit(state.copyWith(isLoading: false));
    }
  }

  void emitUser(LoginState state) {
    emit(state);
  }

  Future<void> _signInWithGoogle(
    SignInWithGoogle event,
    Emitter<LoginState> emit,
  ) async {
    try {
      final AppUser? user = await _auth.signInWithGoogle();
      emit(state.copyWith(user: user));
      return;
    } on UserCanceled {}
  }

  Future<void> _logout(Logout event, Emitter<LoginState> emit) async {
    await _auth.logout();
    emit(state.copyWith(user: null));
  }

  @override
  void dispose() {
    _userStream.cancel();
  }
}
