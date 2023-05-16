part of auth_bloc;

@freezed
class UserProperties with _$UserProperties {
  const factory UserProperties({
    @Default(UserIntegrations()) UserIntegrations integrations,
    @Default(<String, dynamic>{}) Map<String, dynamic> experiments,
  }) = UserProperties$;

  factory UserProperties.fromJson(Map<dynamic, dynamic> json) =>
      _$UserPropertiesFromJson(Map<String, dynamic>.from(json));
}
