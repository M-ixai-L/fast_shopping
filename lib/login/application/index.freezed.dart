// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'index.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppleAuthData _$AppleAuthDataFromJson(Map<String, dynamic> json) {
  return AppleAuthData$.fromJson(json);
}

/// @nodoc
mixin _$AppleAuthData {
  @JsonKey(name: 'authorizationCode')
  String get code => throw _privateConstructorUsedError;
  String get idToken => throw _privateConstructorUsedError;
  String get nonce => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppleAuthDataCopyWith<AppleAuthData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppleAuthDataCopyWith<$Res> {
  factory $AppleAuthDataCopyWith(
          AppleAuthData value, $Res Function(AppleAuthData) then) =
      _$AppleAuthDataCopyWithImpl<$Res, AppleAuthData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'authorizationCode') String code,
      String idToken,
      String nonce});
}

/// @nodoc
class _$AppleAuthDataCopyWithImpl<$Res, $Val extends AppleAuthData>
    implements $AppleAuthDataCopyWith<$Res> {
  _$AppleAuthDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? idToken = null,
    Object? nonce = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      idToken: null == idToken
          ? _value.idToken
          : idToken // ignore: cast_nullable_to_non_nullable
              as String,
      nonce: null == nonce
          ? _value.nonce
          : nonce // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppleAuthData$CopyWith<$Res>
    implements $AppleAuthDataCopyWith<$Res> {
  factory _$$AppleAuthData$CopyWith(
          _$AppleAuthData$ value, $Res Function(_$AppleAuthData$) then) =
      __$$AppleAuthData$CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'authorizationCode') String code,
      String idToken,
      String nonce});
}

/// @nodoc
class __$$AppleAuthData$CopyWithImpl<$Res>
    extends _$AppleAuthDataCopyWithImpl<$Res, _$AppleAuthData$>
    implements _$$AppleAuthData$CopyWith<$Res> {
  __$$AppleAuthData$CopyWithImpl(
      _$AppleAuthData$ _value, $Res Function(_$AppleAuthData$) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? idToken = null,
    Object? nonce = null,
  }) {
    return _then(_$AppleAuthData$(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      idToken: null == idToken
          ? _value.idToken
          : idToken // ignore: cast_nullable_to_non_nullable
              as String,
      nonce: null == nonce
          ? _value.nonce
          : nonce // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppleAuthData$ implements AppleAuthData$ {
  const _$AppleAuthData$(
      {@JsonKey(name: 'authorizationCode') required this.code,
      required this.idToken,
      required this.nonce});

  factory _$AppleAuthData$.fromJson(Map<String, dynamic> json) =>
      _$$AppleAuthData$FromJson(json);

  @override
  @JsonKey(name: 'authorizationCode')
  final String code;
  @override
  final String idToken;
  @override
  final String nonce;

  @override
  String toString() {
    return 'AppleAuthData(code: $code, idToken: $idToken, nonce: $nonce)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppleAuthData$ &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.idToken, idToken) || other.idToken == idToken) &&
            (identical(other.nonce, nonce) || other.nonce == nonce));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, idToken, nonce);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppleAuthData$CopyWith<_$AppleAuthData$> get copyWith =>
      __$$AppleAuthData$CopyWithImpl<_$AppleAuthData$>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppleAuthData$ToJson(
      this,
    );
  }
}

abstract class AppleAuthData$ implements AppleAuthData {
  const factory AppleAuthData$(
      {@JsonKey(name: 'authorizationCode') required final String code,
      required final String idToken,
      required final String nonce}) = _$AppleAuthData$;

  factory AppleAuthData$.fromJson(Map<String, dynamic> json) =
      _$AppleAuthData$.fromJson;

  @override
  @JsonKey(name: 'authorizationCode')
  String get code;
  @override
  String get idToken;
  @override
  String get nonce;
  @override
  @JsonKey(ignore: true)
  _$$AppleAuthData$CopyWith<_$AppleAuthData$> get copyWith =>
      throw _privateConstructorUsedError;
}

GoogleAuthData _$GoogleAuthDataFromJson(Map<String, dynamic> json) {
  return GoogleAuthData$.fromJson(json);
}

/// @nodoc
mixin _$GoogleAuthData {
  @JsonKey(name: 'googleId')
  String get id => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get idToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GoogleAuthDataCopyWith<GoogleAuthData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoogleAuthDataCopyWith<$Res> {
  factory $GoogleAuthDataCopyWith(
          GoogleAuthData value, $Res Function(GoogleAuthData) then) =
      _$GoogleAuthDataCopyWithImpl<$Res, GoogleAuthData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'googleId') String id, String email, String idToken});
}

/// @nodoc
class _$GoogleAuthDataCopyWithImpl<$Res, $Val extends GoogleAuthData>
    implements $GoogleAuthDataCopyWith<$Res> {
  _$GoogleAuthDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? idToken = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      idToken: null == idToken
          ? _value.idToken
          : idToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GoogleAuthData$CopyWith<$Res>
    implements $GoogleAuthDataCopyWith<$Res> {
  factory _$$GoogleAuthData$CopyWith(
          _$GoogleAuthData$ value, $Res Function(_$GoogleAuthData$) then) =
      __$$GoogleAuthData$CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'googleId') String id, String email, String idToken});
}

/// @nodoc
class __$$GoogleAuthData$CopyWithImpl<$Res>
    extends _$GoogleAuthDataCopyWithImpl<$Res, _$GoogleAuthData$>
    implements _$$GoogleAuthData$CopyWith<$Res> {
  __$$GoogleAuthData$CopyWithImpl(
      _$GoogleAuthData$ _value, $Res Function(_$GoogleAuthData$) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? idToken = null,
  }) {
    return _then(_$GoogleAuthData$(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      idToken: null == idToken
          ? _value.idToken
          : idToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GoogleAuthData$ implements GoogleAuthData$ {
  const _$GoogleAuthData$(
      {@JsonKey(name: 'googleId') required this.id,
      required this.email,
      required this.idToken});

  factory _$GoogleAuthData$.fromJson(Map<String, dynamic> json) =>
      _$$GoogleAuthData$FromJson(json);

  @override
  @JsonKey(name: 'googleId')
  final String id;
  @override
  final String email;
  @override
  final String idToken;

  @override
  String toString() {
    return 'GoogleAuthData(id: $id, email: $email, idToken: $idToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoogleAuthData$ &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.idToken, idToken) || other.idToken == idToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, email, idToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GoogleAuthData$CopyWith<_$GoogleAuthData$> get copyWith =>
      __$$GoogleAuthData$CopyWithImpl<_$GoogleAuthData$>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GoogleAuthData$ToJson(
      this,
    );
  }
}

abstract class GoogleAuthData$ implements GoogleAuthData {
  const factory GoogleAuthData$(
      {@JsonKey(name: 'googleId') required final String id,
      required final String email,
      required final String idToken}) = _$GoogleAuthData$;

  factory GoogleAuthData$.fromJson(Map<String, dynamic> json) =
      _$GoogleAuthData$.fromJson;

  @override
  @JsonKey(name: 'googleId')
  String get id;
  @override
  String get email;
  @override
  String get idToken;
  @override
  @JsonKey(ignore: true)
  _$$GoogleAuthData$CopyWith<_$GoogleAuthData$> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LoginState {
  AppUser? get user => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get checkFirebaseAuthentication => throw _privateConstructorUsedError;
  bool get checkCloudAuthentication => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
  @useResult
  $Res call(
      {AppUser? user,
      bool isLoading,
      bool checkFirebaseAuthentication,
      bool checkCloudAuthentication});

  $AppUserCopyWith<$Res>? get user;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? isLoading = null,
    Object? checkFirebaseAuthentication = null,
    Object? checkCloudAuthentication = null,
  }) {
    return _then(_value.copyWith(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUser?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      checkFirebaseAuthentication: null == checkFirebaseAuthentication
          ? _value.checkFirebaseAuthentication
          : checkFirebaseAuthentication // ignore: cast_nullable_to_non_nullable
              as bool,
      checkCloudAuthentication: null == checkCloudAuthentication
          ? _value.checkCloudAuthentication
          : checkCloudAuthentication // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AppUserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $AppUserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LoginState$CopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory _$$LoginState$CopyWith(
          _$LoginState$ value, $Res Function(_$LoginState$) then) =
      __$$LoginState$CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AppUser? user,
      bool isLoading,
      bool checkFirebaseAuthentication,
      bool checkCloudAuthentication});

  @override
  $AppUserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$LoginState$CopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginState$>
    implements _$$LoginState$CopyWith<$Res> {
  __$$LoginState$CopyWithImpl(
      _$LoginState$ _value, $Res Function(_$LoginState$) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? isLoading = null,
    Object? checkFirebaseAuthentication = null,
    Object? checkCloudAuthentication = null,
  }) {
    return _then(_$LoginState$(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUser?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      checkFirebaseAuthentication: null == checkFirebaseAuthentication
          ? _value.checkFirebaseAuthentication
          : checkFirebaseAuthentication // ignore: cast_nullable_to_non_nullable
              as bool,
      checkCloudAuthentication: null == checkCloudAuthentication
          ? _value.checkCloudAuthentication
          : checkCloudAuthentication // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoginState$ implements LoginState$ {
  const _$LoginState$(
      {this.user,
      this.isLoading = false,
      this.checkFirebaseAuthentication = false,
      this.checkCloudAuthentication = false});

  @override
  final AppUser? user;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool checkFirebaseAuthentication;
  @override
  @JsonKey()
  final bool checkCloudAuthentication;

  @override
  String toString() {
    return 'LoginState(user: $user, isLoading: $isLoading, checkFirebaseAuthentication: $checkFirebaseAuthentication, checkCloudAuthentication: $checkCloudAuthentication)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginState$ &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.checkFirebaseAuthentication,
                    checkFirebaseAuthentication) ||
                other.checkFirebaseAuthentication ==
                    checkFirebaseAuthentication) &&
            (identical(
                    other.checkCloudAuthentication, checkCloudAuthentication) ||
                other.checkCloudAuthentication == checkCloudAuthentication));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, isLoading,
      checkFirebaseAuthentication, checkCloudAuthentication);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginState$CopyWith<_$LoginState$> get copyWith =>
      __$$LoginState$CopyWithImpl<_$LoginState$>(this, _$identity);
}

abstract class LoginState$ implements LoginState {
  const factory LoginState$(
      {final AppUser? user,
      final bool isLoading,
      final bool checkFirebaseAuthentication,
      final bool checkCloudAuthentication}) = _$LoginState$;

  @override
  AppUser? get user;
  @override
  bool get isLoading;
  @override
  bool get checkFirebaseAuthentication;
  @override
  bool get checkCloudAuthentication;
  @override
  @JsonKey(ignore: true)
  _$$LoginState$CopyWith<_$LoginState$> get copyWith =>
      throw _privateConstructorUsedError;
}

AppUser _$AppUserFromJson(Map<String, dynamic> json) {
  return AppUser$.fromJson(json);
}

/// @nodoc
mixin _$AppUser {
  String get uid => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppUserCopyWith<AppUser> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppUserCopyWith<$Res> {
  factory $AppUserCopyWith(AppUser value, $Res Function(AppUser) then) =
      _$AppUserCopyWithImpl<$Res, AppUser>;
  @useResult
  $Res call({String uid, String email});
}

/// @nodoc
class _$AppUserCopyWithImpl<$Res, $Val extends AppUser>
    implements $AppUserCopyWith<$Res> {
  _$AppUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppUser$CopyWith<$Res> implements $AppUserCopyWith<$Res> {
  factory _$$AppUser$CopyWith(
          _$AppUser$ value, $Res Function(_$AppUser$) then) =
      __$$AppUser$CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String uid, String email});
}

/// @nodoc
class __$$AppUser$CopyWithImpl<$Res>
    extends _$AppUserCopyWithImpl<$Res, _$AppUser$>
    implements _$$AppUser$CopyWith<$Res> {
  __$$AppUser$CopyWithImpl(_$AppUser$ _value, $Res Function(_$AppUser$) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? email = null,
  }) {
    return _then(_$AppUser$(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppUser$ implements AppUser$ {
  const _$AppUser$({required this.uid, required this.email});

  factory _$AppUser$.fromJson(Map<String, dynamic> json) =>
      _$$AppUser$FromJson(json);

  @override
  final String uid;
  @override
  final String email;

  @override
  String toString() {
    return 'AppUser(uid: $uid, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppUser$ &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, uid, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppUser$CopyWith<_$AppUser$> get copyWith =>
      __$$AppUser$CopyWithImpl<_$AppUser$>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppUser$ToJson(
      this,
    );
  }
}

abstract class AppUser$ implements AppUser {
  const factory AppUser$(
      {required final String uid, required final String email}) = _$AppUser$;

  factory AppUser$.fromJson(Map<String, dynamic> json) = _$AppUser$.fromJson;

  @override
  String get uid;
  @override
  String get email;
  @override
  @JsonKey(ignore: true)
  _$$AppUser$CopyWith<_$AppUser$> get copyWith =>
      throw _privateConstructorUsedError;
}

UserIntegrations _$UserIntegrationsFromJson(Map<String, dynamic> json) {
  return UserIntegrations$.fromJson(json);
}

/// @nodoc
mixin _$UserIntegrations {
  bool get isFitbitConnected => throw _privateConstructorUsedError;
  bool get isGoogleFitConnected => throw _privateConstructorUsedError;
  bool get isBiosenseConnected => throw _privateConstructorUsedError;
  bool get isKetoMojoConnected => throw _privateConstructorUsedError;
  bool get isGarminConnected => throw _privateConstructorUsedError;
  bool get isAppleHealthConnected => throw _privateConstructorUsedError;
  bool get isAppleHealthPreviouslyConnected =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserIntegrationsCopyWith<UserIntegrations> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserIntegrationsCopyWith<$Res> {
  factory $UserIntegrationsCopyWith(
          UserIntegrations value, $Res Function(UserIntegrations) then) =
      _$UserIntegrationsCopyWithImpl<$Res, UserIntegrations>;
  @useResult
  $Res call(
      {bool isFitbitConnected,
      bool isGoogleFitConnected,
      bool isBiosenseConnected,
      bool isKetoMojoConnected,
      bool isGarminConnected,
      bool isAppleHealthConnected,
      bool isAppleHealthPreviouslyConnected});
}

/// @nodoc
class _$UserIntegrationsCopyWithImpl<$Res, $Val extends UserIntegrations>
    implements $UserIntegrationsCopyWith<$Res> {
  _$UserIntegrationsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isFitbitConnected = null,
    Object? isGoogleFitConnected = null,
    Object? isBiosenseConnected = null,
    Object? isKetoMojoConnected = null,
    Object? isGarminConnected = null,
    Object? isAppleHealthConnected = null,
    Object? isAppleHealthPreviouslyConnected = null,
  }) {
    return _then(_value.copyWith(
      isFitbitConnected: null == isFitbitConnected
          ? _value.isFitbitConnected
          : isFitbitConnected // ignore: cast_nullable_to_non_nullable
              as bool,
      isGoogleFitConnected: null == isGoogleFitConnected
          ? _value.isGoogleFitConnected
          : isGoogleFitConnected // ignore: cast_nullable_to_non_nullable
              as bool,
      isBiosenseConnected: null == isBiosenseConnected
          ? _value.isBiosenseConnected
          : isBiosenseConnected // ignore: cast_nullable_to_non_nullable
              as bool,
      isKetoMojoConnected: null == isKetoMojoConnected
          ? _value.isKetoMojoConnected
          : isKetoMojoConnected // ignore: cast_nullable_to_non_nullable
              as bool,
      isGarminConnected: null == isGarminConnected
          ? _value.isGarminConnected
          : isGarminConnected // ignore: cast_nullable_to_non_nullable
              as bool,
      isAppleHealthConnected: null == isAppleHealthConnected
          ? _value.isAppleHealthConnected
          : isAppleHealthConnected // ignore: cast_nullable_to_non_nullable
              as bool,
      isAppleHealthPreviouslyConnected: null == isAppleHealthPreviouslyConnected
          ? _value.isAppleHealthPreviouslyConnected
          : isAppleHealthPreviouslyConnected // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserIntegrations$CopyWith<$Res>
    implements $UserIntegrationsCopyWith<$Res> {
  factory _$$UserIntegrations$CopyWith(
          _$UserIntegrations$ value, $Res Function(_$UserIntegrations$) then) =
      __$$UserIntegrations$CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isFitbitConnected,
      bool isGoogleFitConnected,
      bool isBiosenseConnected,
      bool isKetoMojoConnected,
      bool isGarminConnected,
      bool isAppleHealthConnected,
      bool isAppleHealthPreviouslyConnected});
}

/// @nodoc
class __$$UserIntegrations$CopyWithImpl<$Res>
    extends _$UserIntegrationsCopyWithImpl<$Res, _$UserIntegrations$>
    implements _$$UserIntegrations$CopyWith<$Res> {
  __$$UserIntegrations$CopyWithImpl(
      _$UserIntegrations$ _value, $Res Function(_$UserIntegrations$) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isFitbitConnected = null,
    Object? isGoogleFitConnected = null,
    Object? isBiosenseConnected = null,
    Object? isKetoMojoConnected = null,
    Object? isGarminConnected = null,
    Object? isAppleHealthConnected = null,
    Object? isAppleHealthPreviouslyConnected = null,
  }) {
    return _then(_$UserIntegrations$(
      isFitbitConnected: null == isFitbitConnected
          ? _value.isFitbitConnected
          : isFitbitConnected // ignore: cast_nullable_to_non_nullable
              as bool,
      isGoogleFitConnected: null == isGoogleFitConnected
          ? _value.isGoogleFitConnected
          : isGoogleFitConnected // ignore: cast_nullable_to_non_nullable
              as bool,
      isBiosenseConnected: null == isBiosenseConnected
          ? _value.isBiosenseConnected
          : isBiosenseConnected // ignore: cast_nullable_to_non_nullable
              as bool,
      isKetoMojoConnected: null == isKetoMojoConnected
          ? _value.isKetoMojoConnected
          : isKetoMojoConnected // ignore: cast_nullable_to_non_nullable
              as bool,
      isGarminConnected: null == isGarminConnected
          ? _value.isGarminConnected
          : isGarminConnected // ignore: cast_nullable_to_non_nullable
              as bool,
      isAppleHealthConnected: null == isAppleHealthConnected
          ? _value.isAppleHealthConnected
          : isAppleHealthConnected // ignore: cast_nullable_to_non_nullable
              as bool,
      isAppleHealthPreviouslyConnected: null == isAppleHealthPreviouslyConnected
          ? _value.isAppleHealthPreviouslyConnected
          : isAppleHealthPreviouslyConnected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserIntegrations$ implements UserIntegrations$ {
  const _$UserIntegrations$(
      {this.isFitbitConnected = false,
      this.isGoogleFitConnected = false,
      this.isBiosenseConnected = false,
      this.isKetoMojoConnected = false,
      this.isGarminConnected = false,
      this.isAppleHealthConnected = false,
      this.isAppleHealthPreviouslyConnected = false});

  factory _$UserIntegrations$.fromJson(Map<String, dynamic> json) =>
      _$$UserIntegrations$FromJson(json);

  @override
  @JsonKey()
  final bool isFitbitConnected;
  @override
  @JsonKey()
  final bool isGoogleFitConnected;
  @override
  @JsonKey()
  final bool isBiosenseConnected;
  @override
  @JsonKey()
  final bool isKetoMojoConnected;
  @override
  @JsonKey()
  final bool isGarminConnected;
  @override
  @JsonKey()
  final bool isAppleHealthConnected;
  @override
  @JsonKey()
  final bool isAppleHealthPreviouslyConnected;

  @override
  String toString() {
    return 'UserIntegrations(isFitbitConnected: $isFitbitConnected, isGoogleFitConnected: $isGoogleFitConnected, isBiosenseConnected: $isBiosenseConnected, isKetoMojoConnected: $isKetoMojoConnected, isGarminConnected: $isGarminConnected, isAppleHealthConnected: $isAppleHealthConnected, isAppleHealthPreviouslyConnected: $isAppleHealthPreviouslyConnected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserIntegrations$ &&
            (identical(other.isFitbitConnected, isFitbitConnected) ||
                other.isFitbitConnected == isFitbitConnected) &&
            (identical(other.isGoogleFitConnected, isGoogleFitConnected) ||
                other.isGoogleFitConnected == isGoogleFitConnected) &&
            (identical(other.isBiosenseConnected, isBiosenseConnected) ||
                other.isBiosenseConnected == isBiosenseConnected) &&
            (identical(other.isKetoMojoConnected, isKetoMojoConnected) ||
                other.isKetoMojoConnected == isKetoMojoConnected) &&
            (identical(other.isGarminConnected, isGarminConnected) ||
                other.isGarminConnected == isGarminConnected) &&
            (identical(other.isAppleHealthConnected, isAppleHealthConnected) ||
                other.isAppleHealthConnected == isAppleHealthConnected) &&
            (identical(other.isAppleHealthPreviouslyConnected,
                    isAppleHealthPreviouslyConnected) ||
                other.isAppleHealthPreviouslyConnected ==
                    isAppleHealthPreviouslyConnected));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      isFitbitConnected,
      isGoogleFitConnected,
      isBiosenseConnected,
      isKetoMojoConnected,
      isGarminConnected,
      isAppleHealthConnected,
      isAppleHealthPreviouslyConnected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserIntegrations$CopyWith<_$UserIntegrations$> get copyWith =>
      __$$UserIntegrations$CopyWithImpl<_$UserIntegrations$>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserIntegrations$ToJson(
      this,
    );
  }
}

abstract class UserIntegrations$ implements UserIntegrations {
  const factory UserIntegrations$(
      {final bool isFitbitConnected,
      final bool isGoogleFitConnected,
      final bool isBiosenseConnected,
      final bool isKetoMojoConnected,
      final bool isGarminConnected,
      final bool isAppleHealthConnected,
      final bool isAppleHealthPreviouslyConnected}) = _$UserIntegrations$;

  factory UserIntegrations$.fromJson(Map<String, dynamic> json) =
      _$UserIntegrations$.fromJson;

  @override
  bool get isFitbitConnected;
  @override
  bool get isGoogleFitConnected;
  @override
  bool get isBiosenseConnected;
  @override
  bool get isKetoMojoConnected;
  @override
  bool get isGarminConnected;
  @override
  bool get isAppleHealthConnected;
  @override
  bool get isAppleHealthPreviouslyConnected;
  @override
  @JsonKey(ignore: true)
  _$$UserIntegrations$CopyWith<_$UserIntegrations$> get copyWith =>
      throw _privateConstructorUsedError;
}

UserProperties _$UserPropertiesFromJson(Map<String, dynamic> json) {
  return UserProperties$.fromJson(json);
}

/// @nodoc
mixin _$UserProperties {
  UserIntegrations get integrations => throw _privateConstructorUsedError;
  Map<String, dynamic> get experiments => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserPropertiesCopyWith<UserProperties> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserPropertiesCopyWith<$Res> {
  factory $UserPropertiesCopyWith(
          UserProperties value, $Res Function(UserProperties) then) =
      _$UserPropertiesCopyWithImpl<$Res, UserProperties>;
  @useResult
  $Res call({UserIntegrations integrations, Map<String, dynamic> experiments});

  $UserIntegrationsCopyWith<$Res> get integrations;
}

/// @nodoc
class _$UserPropertiesCopyWithImpl<$Res, $Val extends UserProperties>
    implements $UserPropertiesCopyWith<$Res> {
  _$UserPropertiesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? integrations = null,
    Object? experiments = null,
  }) {
    return _then(_value.copyWith(
      integrations: null == integrations
          ? _value.integrations
          : integrations // ignore: cast_nullable_to_non_nullable
              as UserIntegrations,
      experiments: null == experiments
          ? _value.experiments
          : experiments // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserIntegrationsCopyWith<$Res> get integrations {
    return $UserIntegrationsCopyWith<$Res>(_value.integrations, (value) {
      return _then(_value.copyWith(integrations: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserProperties$CopyWith<$Res>
    implements $UserPropertiesCopyWith<$Res> {
  factory _$$UserProperties$CopyWith(
          _$UserProperties$ value, $Res Function(_$UserProperties$) then) =
      __$$UserProperties$CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserIntegrations integrations, Map<String, dynamic> experiments});

  @override
  $UserIntegrationsCopyWith<$Res> get integrations;
}

/// @nodoc
class __$$UserProperties$CopyWithImpl<$Res>
    extends _$UserPropertiesCopyWithImpl<$Res, _$UserProperties$>
    implements _$$UserProperties$CopyWith<$Res> {
  __$$UserProperties$CopyWithImpl(
      _$UserProperties$ _value, $Res Function(_$UserProperties$) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? integrations = null,
    Object? experiments = null,
  }) {
    return _then(_$UserProperties$(
      integrations: null == integrations
          ? _value.integrations
          : integrations // ignore: cast_nullable_to_non_nullable
              as UserIntegrations,
      experiments: null == experiments
          ? _value._experiments
          : experiments // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserProperties$ implements UserProperties$ {
  const _$UserProperties$(
      {this.integrations = const UserIntegrations(),
      final Map<String, dynamic> experiments = const <String, dynamic>{}})
      : _experiments = experiments;

  factory _$UserProperties$.fromJson(Map<String, dynamic> json) =>
      _$$UserProperties$FromJson(json);

  @override
  @JsonKey()
  final UserIntegrations integrations;
  final Map<String, dynamic> _experiments;
  @override
  @JsonKey()
  Map<String, dynamic> get experiments {
    if (_experiments is EqualUnmodifiableMapView) return _experiments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_experiments);
  }

  @override
  String toString() {
    return 'UserProperties(integrations: $integrations, experiments: $experiments)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserProperties$ &&
            (identical(other.integrations, integrations) ||
                other.integrations == integrations) &&
            const DeepCollectionEquality()
                .equals(other._experiments, _experiments));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, integrations,
      const DeepCollectionEquality().hash(_experiments));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserProperties$CopyWith<_$UserProperties$> get copyWith =>
      __$$UserProperties$CopyWithImpl<_$UserProperties$>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserProperties$ToJson(
      this,
    );
  }
}

abstract class UserProperties$ implements UserProperties {
  const factory UserProperties$(
      {final UserIntegrations integrations,
      final Map<String, dynamic> experiments}) = _$UserProperties$;

  factory UserProperties$.fromJson(Map<String, dynamic> json) =
      _$UserProperties$.fromJson;

  @override
  UserIntegrations get integrations;
  @override
  Map<String, dynamic> get experiments;
  @override
  @JsonKey(ignore: true)
  _$$UserProperties$CopyWith<_$UserProperties$> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CheckAuthorization {}

/// @nodoc
abstract class $CheckAuthorizationCopyWith<$Res> {
  factory $CheckAuthorizationCopyWith(
          CheckAuthorization value, $Res Function(CheckAuthorization) then) =
      _$CheckAuthorizationCopyWithImpl<$Res, CheckAuthorization>;
}

/// @nodoc
class _$CheckAuthorizationCopyWithImpl<$Res, $Val extends CheckAuthorization>
    implements $CheckAuthorizationCopyWith<$Res> {
  _$CheckAuthorizationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CheckAuthorization$CopyWith<$Res> {
  factory _$$CheckAuthorization$CopyWith(_$CheckAuthorization$ value,
          $Res Function(_$CheckAuthorization$) then) =
      __$$CheckAuthorization$CopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckAuthorization$CopyWithImpl<$Res>
    extends _$CheckAuthorizationCopyWithImpl<$Res, _$CheckAuthorization$>
    implements _$$CheckAuthorization$CopyWith<$Res> {
  __$$CheckAuthorization$CopyWithImpl(
      _$CheckAuthorization$ _value, $Res Function(_$CheckAuthorization$) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CheckAuthorization$ implements CheckAuthorization$ {
  const _$CheckAuthorization$();

  @override
  String toString() {
    return 'CheckAuthorization()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckAuthorization$);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class CheckAuthorization$ implements CheckAuthorization {
  const factory CheckAuthorization$() = _$CheckAuthorization$;
}

/// @nodoc
mixin _$SignInWithGoogle {}

/// @nodoc
abstract class $SignInWithGoogleCopyWith<$Res> {
  factory $SignInWithGoogleCopyWith(
          SignInWithGoogle value, $Res Function(SignInWithGoogle) then) =
      _$SignInWithGoogleCopyWithImpl<$Res, SignInWithGoogle>;
}

/// @nodoc
class _$SignInWithGoogleCopyWithImpl<$Res, $Val extends SignInWithGoogle>
    implements $SignInWithGoogleCopyWith<$Res> {
  _$SignInWithGoogleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SignInWithGoogle$CopyWith<$Res> {
  factory _$$SignInWithGoogle$CopyWith(
          _$SignInWithGoogle$ value, $Res Function(_$SignInWithGoogle$) then) =
      __$$SignInWithGoogle$CopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignInWithGoogle$CopyWithImpl<$Res>
    extends _$SignInWithGoogleCopyWithImpl<$Res, _$SignInWithGoogle$>
    implements _$$SignInWithGoogle$CopyWith<$Res> {
  __$$SignInWithGoogle$CopyWithImpl(
      _$SignInWithGoogle$ _value, $Res Function(_$SignInWithGoogle$) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignInWithGoogle$ implements SignInWithGoogle$ {
  const _$SignInWithGoogle$();

  @override
  String toString() {
    return 'SignInWithGoogle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignInWithGoogle$);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class SignInWithGoogle$ implements SignInWithGoogle {
  const factory SignInWithGoogle$() = _$SignInWithGoogle$;
}

/// @nodoc
mixin _$Logout {}

/// @nodoc
abstract class $LogoutCopyWith<$Res> {
  factory $LogoutCopyWith(Logout value, $Res Function(Logout) then) =
      _$LogoutCopyWithImpl<$Res, Logout>;
}

/// @nodoc
class _$LogoutCopyWithImpl<$Res, $Val extends Logout>
    implements $LogoutCopyWith<$Res> {
  _$LogoutCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$Logout$CopyWith<$Res> {
  factory _$$Logout$CopyWith(_$Logout$ value, $Res Function(_$Logout$) then) =
      __$$Logout$CopyWithImpl<$Res>;
}

/// @nodoc
class __$$Logout$CopyWithImpl<$Res>
    extends _$LogoutCopyWithImpl<$Res, _$Logout$>
    implements _$$Logout$CopyWith<$Res> {
  __$$Logout$CopyWithImpl(_$Logout$ _value, $Res Function(_$Logout$) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Logout$ implements Logout$ {
  const _$Logout$();

  @override
  String toString() {
    return 'Logout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Logout$);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class Logout$ implements Logout {
  const factory Logout$() = _$Logout$;
}
