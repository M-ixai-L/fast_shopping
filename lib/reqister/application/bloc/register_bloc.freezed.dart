// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RegisterBlocEvent {
  String get email => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String email, String password, String firstName, String lastName)
        registerNewUser,
    required TResult Function(
            String email, String uid, String firstName, String lastName)
        registerNewUserWithUid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String email, String password, String firstName, String lastName)?
        registerNewUser,
    TResult? Function(
            String email, String uid, String firstName, String lastName)?
        registerNewUserWithUid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String email, String password, String firstName, String lastName)?
        registerNewUser,
    TResult Function(
            String email, String uid, String firstName, String lastName)?
        registerNewUserWithUid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegisterNewUser value) registerNewUser,
    required TResult Function(RegisterNewUserWithUid value)
        registerNewUserWithUid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegisterNewUser value)? registerNewUser,
    TResult? Function(RegisterNewUserWithUid value)? registerNewUserWithUid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterNewUser value)? registerNewUser,
    TResult Function(RegisterNewUserWithUid value)? registerNewUserWithUid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterBlocEventCopyWith<RegisterBlocEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterBlocEventCopyWith<$Res> {
  factory $RegisterBlocEventCopyWith(
          RegisterBlocEvent value, $Res Function(RegisterBlocEvent) then) =
      _$RegisterBlocEventCopyWithImpl<$Res, RegisterBlocEvent>;
  @useResult
  $Res call({String email, String firstName, String lastName});
}

/// @nodoc
class _$RegisterBlocEventCopyWithImpl<$Res, $Val extends RegisterBlocEvent>
    implements $RegisterBlocEventCopyWith<$Res> {
  _$RegisterBlocEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? firstName = null,
    Object? lastName = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegisterNewUserCopyWith<$Res>
    implements $RegisterBlocEventCopyWith<$Res> {
  factory _$$RegisterNewUserCopyWith(
          _$RegisterNewUser value, $Res Function(_$RegisterNewUser) then) =
      __$$RegisterNewUserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password, String firstName, String lastName});
}

/// @nodoc
class __$$RegisterNewUserCopyWithImpl<$Res>
    extends _$RegisterBlocEventCopyWithImpl<$Res, _$RegisterNewUser>
    implements _$$RegisterNewUserCopyWith<$Res> {
  __$$RegisterNewUserCopyWithImpl(
      _$RegisterNewUser _value, $Res Function(_$RegisterNewUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? firstName = null,
    Object? lastName = null,
  }) {
    return _then(_$RegisterNewUser(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RegisterNewUser implements RegisterNewUser {
  const _$RegisterNewUser(
      this.email, this.password, this.firstName, this.lastName);

  @override
  final String email;
  @override
  final String password;
  @override
  final String firstName;
  @override
  final String lastName;

  @override
  String toString() {
    return 'RegisterBlocEvent.registerNewUser(email: $email, password: $password, firstName: $firstName, lastName: $lastName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterNewUser &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, email, password, firstName, lastName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterNewUserCopyWith<_$RegisterNewUser> get copyWith =>
      __$$RegisterNewUserCopyWithImpl<_$RegisterNewUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String email, String password, String firstName, String lastName)
        registerNewUser,
    required TResult Function(
            String email, String uid, String firstName, String lastName)
        registerNewUserWithUid,
  }) {
    return registerNewUser(email, password, firstName, lastName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String email, String password, String firstName, String lastName)?
        registerNewUser,
    TResult? Function(
            String email, String uid, String firstName, String lastName)?
        registerNewUserWithUid,
  }) {
    return registerNewUser?.call(email, password, firstName, lastName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String email, String password, String firstName, String lastName)?
        registerNewUser,
    TResult Function(
            String email, String uid, String firstName, String lastName)?
        registerNewUserWithUid,
    required TResult orElse(),
  }) {
    if (registerNewUser != null) {
      return registerNewUser(email, password, firstName, lastName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegisterNewUser value) registerNewUser,
    required TResult Function(RegisterNewUserWithUid value)
        registerNewUserWithUid,
  }) {
    return registerNewUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegisterNewUser value)? registerNewUser,
    TResult? Function(RegisterNewUserWithUid value)? registerNewUserWithUid,
  }) {
    return registerNewUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterNewUser value)? registerNewUser,
    TResult Function(RegisterNewUserWithUid value)? registerNewUserWithUid,
    required TResult orElse(),
  }) {
    if (registerNewUser != null) {
      return registerNewUser(this);
    }
    return orElse();
  }
}

abstract class RegisterNewUser implements RegisterBlocEvent {
  const factory RegisterNewUser(final String email, final String password,
      final String firstName, final String lastName) = _$RegisterNewUser;

  @override
  String get email;
  String get password;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  @JsonKey(ignore: true)
  _$$RegisterNewUserCopyWith<_$RegisterNewUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegisterNewUserWithUidCopyWith<$Res>
    implements $RegisterBlocEventCopyWith<$Res> {
  factory _$$RegisterNewUserWithUidCopyWith(_$RegisterNewUserWithUid value,
          $Res Function(_$RegisterNewUserWithUid) then) =
      __$$RegisterNewUserWithUidCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String uid, String firstName, String lastName});
}

/// @nodoc
class __$$RegisterNewUserWithUidCopyWithImpl<$Res>
    extends _$RegisterBlocEventCopyWithImpl<$Res, _$RegisterNewUserWithUid>
    implements _$$RegisterNewUserWithUidCopyWith<$Res> {
  __$$RegisterNewUserWithUidCopyWithImpl(_$RegisterNewUserWithUid _value,
      $Res Function(_$RegisterNewUserWithUid) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? uid = null,
    Object? firstName = null,
    Object? lastName = null,
  }) {
    return _then(_$RegisterNewUserWithUid(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RegisterNewUserWithUid implements RegisterNewUserWithUid {
  const _$RegisterNewUserWithUid(
      this.email, this.uid, this.firstName, this.lastName);

  @override
  final String email;
  @override
  final String uid;
  @override
  final String firstName;
  @override
  final String lastName;

  @override
  String toString() {
    return 'RegisterBlocEvent.registerNewUserWithUid(email: $email, uid: $uid, firstName: $firstName, lastName: $lastName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterNewUserWithUid &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, uid, firstName, lastName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterNewUserWithUidCopyWith<_$RegisterNewUserWithUid> get copyWith =>
      __$$RegisterNewUserWithUidCopyWithImpl<_$RegisterNewUserWithUid>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String email, String password, String firstName, String lastName)
        registerNewUser,
    required TResult Function(
            String email, String uid, String firstName, String lastName)
        registerNewUserWithUid,
  }) {
    return registerNewUserWithUid(email, uid, firstName, lastName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String email, String password, String firstName, String lastName)?
        registerNewUser,
    TResult? Function(
            String email, String uid, String firstName, String lastName)?
        registerNewUserWithUid,
  }) {
    return registerNewUserWithUid?.call(email, uid, firstName, lastName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String email, String password, String firstName, String lastName)?
        registerNewUser,
    TResult Function(
            String email, String uid, String firstName, String lastName)?
        registerNewUserWithUid,
    required TResult orElse(),
  }) {
    if (registerNewUserWithUid != null) {
      return registerNewUserWithUid(email, uid, firstName, lastName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegisterNewUser value) registerNewUser,
    required TResult Function(RegisterNewUserWithUid value)
        registerNewUserWithUid,
  }) {
    return registerNewUserWithUid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegisterNewUser value)? registerNewUser,
    TResult? Function(RegisterNewUserWithUid value)? registerNewUserWithUid,
  }) {
    return registerNewUserWithUid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterNewUser value)? registerNewUser,
    TResult Function(RegisterNewUserWithUid value)? registerNewUserWithUid,
    required TResult orElse(),
  }) {
    if (registerNewUserWithUid != null) {
      return registerNewUserWithUid(this);
    }
    return orElse();
  }
}

abstract class RegisterNewUserWithUid implements RegisterBlocEvent {
  const factory RegisterNewUserWithUid(final String email, final String uid,
      final String firstName, final String lastName) = _$RegisterNewUserWithUid;

  @override
  String get email;
  String get uid;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  @JsonKey(ignore: true)
  _$$RegisterNewUserWithUidCopyWith<_$RegisterNewUserWithUid> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RegisterBlocState {
  FSUser? get user => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterBlocStateCopyWith<RegisterBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterBlocStateCopyWith<$Res> {
  factory $RegisterBlocStateCopyWith(
          RegisterBlocState value, $Res Function(RegisterBlocState) then) =
      _$RegisterBlocStateCopyWithImpl<$Res, RegisterBlocState>;
  @useResult
  $Res call({FSUser? user, bool isLoading});

  $FSUserCopyWith<$Res>? get user;
}

/// @nodoc
class _$RegisterBlocStateCopyWithImpl<$Res, $Val extends RegisterBlocState>
    implements $RegisterBlocStateCopyWith<$Res> {
  _$RegisterBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as FSUser?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FSUserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $FSUserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RegisterBlocState$CopyWith<$Res>
    implements $RegisterBlocStateCopyWith<$Res> {
  factory _$$RegisterBlocState$CopyWith(_$RegisterBlocState$ value,
          $Res Function(_$RegisterBlocState$) then) =
      __$$RegisterBlocState$CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FSUser? user, bool isLoading});

  @override
  $FSUserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$RegisterBlocState$CopyWithImpl<$Res>
    extends _$RegisterBlocStateCopyWithImpl<$Res, _$RegisterBlocState$>
    implements _$$RegisterBlocState$CopyWith<$Res> {
  __$$RegisterBlocState$CopyWithImpl(
      _$RegisterBlocState$ _value, $Res Function(_$RegisterBlocState$) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? isLoading = null,
  }) {
    return _then(_$RegisterBlocState$(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as FSUser?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$RegisterBlocState$ implements RegisterBlocState$ {
  const _$RegisterBlocState$({this.user, this.isLoading = false});

  @override
  final FSUser? user;
  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'RegisterBlocState(user: $user, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterBlocState$ &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterBlocState$CopyWith<_$RegisterBlocState$> get copyWith =>
      __$$RegisterBlocState$CopyWithImpl<_$RegisterBlocState$>(
          this, _$identity);
}

abstract class RegisterBlocState$ implements RegisterBlocState {
  const factory RegisterBlocState$({final FSUser? user, final bool isLoading}) =
      _$RegisterBlocState$;

  @override
  FSUser? get user;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$RegisterBlocState$CopyWith<_$RegisterBlocState$> get copyWith =>
      throw _privateConstructorUsedError;
}
