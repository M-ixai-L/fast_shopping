part of auth_bloc;

@freezed
class UserIntegrations with _$UserIntegrations {
  const factory UserIntegrations({
    @Default(false) bool isFitbitConnected,
    @Default(false) bool isGoogleFitConnected,
    @Default(false) bool isBiosenseConnected,
    @Default(false) bool isKetoMojoConnected,
    @Default(false) bool isGarminConnected,
    @Default(false) bool isAppleHealthConnected,
    @Default(false) bool isAppleHealthPreviouslyConnected,
  }) = UserIntegrations$;

  factory UserIntegrations.fromJson(Map<dynamic, dynamic> json) =>
      _$UserIntegrationsFromJson(Map<String, dynamic>.from(json));
}
