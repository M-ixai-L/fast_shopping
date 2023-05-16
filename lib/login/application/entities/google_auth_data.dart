part of auth_bloc;

@freezed
class GoogleAuthData with _$GoogleAuthData {
  const factory GoogleAuthData({
    @JsonKey(name: 'googleId') required String id,
    required String email,
    required String idToken,
  }) = GoogleAuthData$;

  factory GoogleAuthData.fromJson(Map<dynamic, dynamic> json) =>
      _$GoogleAuthDataFromJson(Map<String, dynamic>.from(json));
}
