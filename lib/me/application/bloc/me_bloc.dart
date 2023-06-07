import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:fast_shopping/login/infrastructure/auth_repository.dart';
import 'package:fast_shopping/models/fs_user.dart';
import 'package:fast_shopping/navigation/navigation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'me_bloc.freezed.dart';
part 'me_event.dart';
part 'me_state.dart';

@injectable
class MeBloc extends Bloc<MeEvent, MeState> {
  MeBloc({required AuthRepository authRepository})
      : _authRepository = authRepository,
        super(const MeState()) {
    on<SignOut>(_signOut);
    on<GetUser>(_getUser);
    add(const GetUser());
  }
  final AuthRepository _authRepository;

  FutureOr<void> _signOut(SignOut event, Emitter<MeState> emit) async {
    await _authRepository.logout();
    router.replace('/');
  }

  FutureOr<void> _getUser(GetUser event, Emitter<MeState> emit) async {
    emit(state.copyWith(user: await _authRepository.getUser()));
  }
}
