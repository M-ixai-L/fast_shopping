// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fs_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FSUser _$FSUserFromJson(Map<String, dynamic> json) {
  return FSUser$.fromJson(json);
}

/// @nodoc
mixin _$FSUser {
  String get uid => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  List<String> get products => throw _privateConstructorUsedError;
  List<String> get productsHistory => throw _privateConstructorUsedError;
  bool get isAdmin => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FSUserCopyWith<FSUser> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FSUserCopyWith<$Res> {
  factory $FSUserCopyWith(FSUser value, $Res Function(FSUser) then) =
      _$FSUserCopyWithImpl<$Res, FSUser>;
  @useResult
  $Res call(
      {String uid,
      String email,
      String firstName,
      String lastName,
      String? image,
      List<String> products,
      List<String> productsHistory,
      bool isAdmin});
}

/// @nodoc
class _$FSUserCopyWithImpl<$Res, $Val extends FSUser>
    implements $FSUserCopyWith<$Res> {
  _$FSUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? email = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? image = freezed,
    Object? products = null,
    Object? productsHistory = null,
    Object? isAdmin = null,
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
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<String>,
      productsHistory: null == productsHistory
          ? _value.productsHistory
          : productsHistory // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isAdmin: null == isAdmin
          ? _value.isAdmin
          : isAdmin // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FSUser$CopyWith<$Res> implements $FSUserCopyWith<$Res> {
  factory _$$FSUser$CopyWith(_$FSUser$ value, $Res Function(_$FSUser$) then) =
      __$$FSUser$CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String uid,
      String email,
      String firstName,
      String lastName,
      String? image,
      List<String> products,
      List<String> productsHistory,
      bool isAdmin});
}

/// @nodoc
class __$$FSUser$CopyWithImpl<$Res>
    extends _$FSUserCopyWithImpl<$Res, _$FSUser$>
    implements _$$FSUser$CopyWith<$Res> {
  __$$FSUser$CopyWithImpl(_$FSUser$ _value, $Res Function(_$FSUser$) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? email = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? image = freezed,
    Object? products = null,
    Object? productsHistory = null,
    Object? isAdmin = null,
  }) {
    return _then(_$FSUser$(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
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
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<String>,
      productsHistory: null == productsHistory
          ? _value.productsHistory
          : productsHistory // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isAdmin: null == isAdmin
          ? _value.isAdmin
          : isAdmin // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FSUser$ implements FSUser$ {
  const _$FSUser$(
      {required this.uid,
      required this.email,
      required this.firstName,
      required this.lastName,
      required this.image,
      this.products = const <String>[],
      this.productsHistory = const <String>[],
      this.isAdmin = false});

  factory _$FSUser$.fromJson(Map<String, dynamic> json) =>
      _$$FSUser$FromJson(json);

  @override
  final String uid;
  @override
  final String email;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String? image;
  @override
  @JsonKey()
  final List<String> products;
  @override
  @JsonKey()
  final List<String> productsHistory;
  @override
  @JsonKey()
  final bool isAdmin;

  @override
  String toString() {
    return 'FSUser(uid: $uid, email: $email, firstName: $firstName, lastName: $lastName, image: $image, products: $products, productsHistory: $productsHistory, isAdmin: $isAdmin)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FSUser$ &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.image, image) || other.image == image) &&
            const DeepCollectionEquality().equals(other.products, products) &&
            const DeepCollectionEquality()
                .equals(other.productsHistory, productsHistory) &&
            (identical(other.isAdmin, isAdmin) || other.isAdmin == isAdmin));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      uid,
      email,
      firstName,
      lastName,
      image,
      const DeepCollectionEquality().hash(products),
      const DeepCollectionEquality().hash(productsHistory),
      isAdmin);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FSUser$CopyWith<_$FSUser$> get copyWith =>
      __$$FSUser$CopyWithImpl<_$FSUser$>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FSUser$ToJson(
      this,
    );
  }
}

abstract class FSUser$ implements FSUser {
  const factory FSUser$(
      {required final String uid,
      required final String email,
      required final String firstName,
      required final String lastName,
      required final String? image,
      final List<String> products,
      final List<String> productsHistory,
      final bool isAdmin}) = _$FSUser$;

  factory FSUser$.fromJson(Map<String, dynamic> json) = _$FSUser$.fromJson;

  @override
  String get uid;
  @override
  String get email;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String? get image;
  @override
  List<String> get products;
  @override
  List<String> get productsHistory;
  @override
  bool get isAdmin;
  @override
  @JsonKey(ignore: true)
  _$$FSUser$CopyWith<_$FSUser$> get copyWith =>
      throw _privateConstructorUsedError;
}
