// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'email_password_login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EmailPasswordLoginEvent {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? login,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Login value) login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Login value)? login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Login value)? login,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EmailPasswordLoginEventCopyWith<EmailPasswordLoginEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailPasswordLoginEventCopyWith<$Res> {
  factory $EmailPasswordLoginEventCopyWith(EmailPasswordLoginEvent value,
          $Res Function(EmailPasswordLoginEvent) then) =
      _$EmailPasswordLoginEventCopyWithImpl<$Res, EmailPasswordLoginEvent>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class _$EmailPasswordLoginEventCopyWithImpl<$Res,
        $Val extends EmailPasswordLoginEvent>
    implements $EmailPasswordLoginEventCopyWith<$Res> {
  _$EmailPasswordLoginEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginCopyWith<$Res>
    implements $EmailPasswordLoginEventCopyWith<$Res> {
  factory _$$LoginCopyWith(_$Login value, $Res Function(_$Login) then) =
      __$$LoginCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$LoginCopyWithImpl<$Res>
    extends _$EmailPasswordLoginEventCopyWithImpl<$Res, _$Login>
    implements _$$LoginCopyWith<$Res> {
  __$$LoginCopyWithImpl(_$Login _value, $Res Function(_$Login) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$Login(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Login implements Login {
  const _$Login({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'EmailPasswordLoginEvent.login(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Login &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginCopyWith<_$Login> get copyWith =>
      __$$LoginCopyWithImpl<_$Login>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) login,
  }) {
    return login(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? login,
  }) {
    return login?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? login,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Login value) login,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Login value)? login,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Login value)? login,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class Login implements EmailPasswordLoginEvent {
  const factory Login(
      {required final String email, required final String password}) = _$Login;

  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$LoginCopyWith<_$Login> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EmailPasswordLoginState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isSuccess => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EmailPasswordLoginStateCopyWith<EmailPasswordLoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailPasswordLoginStateCopyWith<$Res> {
  factory $EmailPasswordLoginStateCopyWith(EmailPasswordLoginState value,
          $Res Function(EmailPasswordLoginState) then) =
      _$EmailPasswordLoginStateCopyWithImpl<$Res, EmailPasswordLoginState>;
  @useResult
  $Res call({bool isLoading, bool isSuccess, bool isError});
}

/// @nodoc
class _$EmailPasswordLoginStateCopyWithImpl<$Res,
        $Val extends EmailPasswordLoginState>
    implements $EmailPasswordLoginStateCopyWith<$Res> {
  _$EmailPasswordLoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isSuccess = null,
    Object? isError = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isSuccess: null == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EmailPasswordLoginState$CopyWith<$Res>
    implements $EmailPasswordLoginStateCopyWith<$Res> {
  factory _$$EmailPasswordLoginState$CopyWith(_$EmailPasswordLoginState$ value,
          $Res Function(_$EmailPasswordLoginState$) then) =
      __$$EmailPasswordLoginState$CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, bool isSuccess, bool isError});
}

/// @nodoc
class __$$EmailPasswordLoginState$CopyWithImpl<$Res>
    extends _$EmailPasswordLoginStateCopyWithImpl<$Res,
        _$EmailPasswordLoginState$>
    implements _$$EmailPasswordLoginState$CopyWith<$Res> {
  __$$EmailPasswordLoginState$CopyWithImpl(_$EmailPasswordLoginState$ _value,
      $Res Function(_$EmailPasswordLoginState$) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isSuccess = null,
    Object? isError = null,
  }) {
    return _then(_$EmailPasswordLoginState$(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isSuccess: null == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$EmailPasswordLoginState$ implements EmailPasswordLoginState$ {
  const _$EmailPasswordLoginState$(
      {this.isLoading = false, this.isSuccess = false, this.isError = false});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isSuccess;
  @override
  @JsonKey()
  final bool isError;

  @override
  String toString() {
    return 'EmailPasswordLoginState(isLoading: $isLoading, isSuccess: $isSuccess, isError: $isError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailPasswordLoginState$ &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess) &&
            (identical(other.isError, isError) || other.isError == isError));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, isSuccess, isError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmailPasswordLoginState$CopyWith<_$EmailPasswordLoginState$>
      get copyWith =>
          __$$EmailPasswordLoginState$CopyWithImpl<_$EmailPasswordLoginState$>(
              this, _$identity);
}

abstract class EmailPasswordLoginState$ implements EmailPasswordLoginState {
  const factory EmailPasswordLoginState$(
      {final bool isLoading,
      final bool isSuccess,
      final bool isError}) = _$EmailPasswordLoginState$;

  @override
  bool get isLoading;
  @override
  bool get isSuccess;
  @override
  bool get isError;
  @override
  @JsonKey(ignore: true)
  _$$EmailPasswordLoginState$CopyWith<_$EmailPasswordLoginState$>
      get copyWith => throw _privateConstructorUsedError;
}
