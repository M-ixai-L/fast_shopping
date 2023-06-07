part of 'me_bloc.dart';

@freezed
class MeEvent with _$MeEvent {
  const factory MeEvent.signOut() = SignOut;
  const factory MeEvent.getUser() = GetUser;
}
