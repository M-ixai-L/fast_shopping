// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'index.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppleAuthData$ _$$AppleAuthData$FromJson(Map<String, dynamic> json) =>
    _$AppleAuthData$(
      code: json['authorizationCode'] as String,
      idToken: json['idToken'] as String,
      nonce: json['nonce'] as String,
    );

Map<String, dynamic> _$$AppleAuthData$ToJson(_$AppleAuthData$ instance) =>
    <String, dynamic>{
      'authorizationCode': instance.code,
      'idToken': instance.idToken,
      'nonce': instance.nonce,
    };

_$GoogleAuthData$ _$$GoogleAuthData$FromJson(Map<String, dynamic> json) =>
    _$GoogleAuthData$(
      id: json['googleId'] as String,
      email: json['email'] as String,
      idToken: json['idToken'] as String,
    );

Map<String, dynamic> _$$GoogleAuthData$ToJson(_$GoogleAuthData$ instance) =>
    <String, dynamic>{
      'googleId': instance.id,
      'email': instance.email,
      'idToken': instance.idToken,
    };

_$AppUser$ _$$AppUser$FromJson(Map<String, dynamic> json) => _$AppUser$(
      uid: json['uid'] as String,
      email: json['email'] as String,
    );

Map<String, dynamic> _$$AppUser$ToJson(_$AppUser$ instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'email': instance.email,
    };

_$UserIntegrations$ _$$UserIntegrations$FromJson(Map<String, dynamic> json) =>
    _$UserIntegrations$(
      isFitbitConnected: json['isFitbitConnected'] as bool? ?? false,
      isGoogleFitConnected: json['isGoogleFitConnected'] as bool? ?? false,
      isBiosenseConnected: json['isBiosenseConnected'] as bool? ?? false,
      isKetoMojoConnected: json['isKetoMojoConnected'] as bool? ?? false,
      isGarminConnected: json['isGarminConnected'] as bool? ?? false,
      isAppleHealthConnected: json['isAppleHealthConnected'] as bool? ?? false,
      isAppleHealthPreviouslyConnected:
          json['isAppleHealthPreviouslyConnected'] as bool? ?? false,
    );

Map<String, dynamic> _$$UserIntegrations$ToJson(_$UserIntegrations$ instance) =>
    <String, dynamic>{
      'isFitbitConnected': instance.isFitbitConnected,
      'isGoogleFitConnected': instance.isGoogleFitConnected,
      'isBiosenseConnected': instance.isBiosenseConnected,
      'isKetoMojoConnected': instance.isKetoMojoConnected,
      'isGarminConnected': instance.isGarminConnected,
      'isAppleHealthConnected': instance.isAppleHealthConnected,
      'isAppleHealthPreviouslyConnected':
          instance.isAppleHealthPreviouslyConnected,
    };

_$UserProperties$ _$$UserProperties$FromJson(Map<String, dynamic> json) =>
    _$UserProperties$(
      integrations: json['integrations'] == null
          ? const UserIntegrations()
          : UserIntegrations.fromJson(
              json['integrations'] as Map<String, dynamic>),
      experiments: json['experiments'] as Map<String, dynamic>? ??
          const <String, dynamic>{},
    );

Map<String, dynamic> _$$UserProperties$ToJson(_$UserProperties$ instance) =>
    <String, dynamic>{
      'integrations': instance.integrations,
      'experiments': instance.experiments,
    };
