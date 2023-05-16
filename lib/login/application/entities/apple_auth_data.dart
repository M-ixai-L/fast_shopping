part of auth_bloc;

@freezed
class AppleAuthData with _$AppleAuthData {
  const factory AppleAuthData({
    @JsonKey(name: 'authorizationCode') required String code,
    required String idToken,
    required String nonce,
  }) = AppleAuthData$;

  factory AppleAuthData.fromJson(Map<dynamic, dynamic> json) =>
      _$AppleAuthDataFromJson(Map<String, dynamic>.from(json));
}
