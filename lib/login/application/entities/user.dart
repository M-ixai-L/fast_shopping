part of auth_bloc;

@freezed
class AppUser with _$AppUser {
  const factory AppUser({
    required String uid,
    required String email,
  }) = AppUser$;
  factory AppUser.fromJson(Map<String, dynamic> json) =>
      _$AppUserFromJson(json);
}
