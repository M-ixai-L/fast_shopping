import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:fast_shopping/models/fs_user.dart';
import 'package:fast_shopping/reqister/infrastructure/register_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'register_bloc.freezed.dart';
part 'register_bloc_event.dart';
part 'register_bloc_state.dart';

@injectable
class RegisterBloc extends Bloc<RegisterBlocEvent, RegisterBlocState> {
  RegisterBloc({
    required RegisterRepository registerRepository,
  })  : _registerRepository = registerRepository,
        super(const RegisterBlocState()) {
    on<RegisterNewUser>(_registerNewUser);
    on<RegisterNewUserWithUid>(_registerNewUserWithUid);
  }
  final RegisterRepository _registerRepository;

  FutureOr<void> _registerNewUser(
    RegisterNewUser event,
    Emitter<RegisterBlocState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    FSUser? user = await _registerRepository.registerNewUser(
      email: event.email,
      password: event.password,
      firstName: event.firstName,
      lastName: event.lastName,
    );
    emit(state.copyWith(user: user, isLoading: false));
  }

  FutureOr<void> _registerNewUserWithUid(
    RegisterNewUserWithUid event,
    Emitter<RegisterBlocState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    FSUser? user = await _registerRepository.registerNewUserWithUid(
      email: event.email,
      uid: event.uid,
      firstName: event.firstName,
      lastName: event.lastName,
    );
    emit(state.copyWith(user: user, isLoading: false));
  }
}
