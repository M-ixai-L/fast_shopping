import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:fast_shopping/email_password_login/infrastructure/login_with_email_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'email_password_login_bloc.freezed.dart';
part 'email_password_login_event.dart';
part 'email_password_login_state.dart';

@injectable
class EmailPasswordLoginBloc
    extends Bloc<EmailPasswordLoginEvent, EmailPasswordLoginState> {
  EmailPasswordLoginBloc({
    required LoginWithEmailRepository registerRepository,
  })  : _registerRepository = registerRepository,
        super(const EmailPasswordLoginState()) {
    on<Login>(_login);
  }
  final LoginWithEmailRepository _registerRepository;

  FutureOr<void> _login(
      Login event, Emitter<EmailPasswordLoginState> emit) async {
    emit(state.copyWith(isLoading: true));
    if (await _registerRepository.loginWithEmailPassword(
        email: event.email, password: event.password)) {
      emit(state.copyWith(isLoading: false, isSuccess: true));
    } else {
      emit(state.copyWith(isLoading: false, isError: true));
    }
  }
}
