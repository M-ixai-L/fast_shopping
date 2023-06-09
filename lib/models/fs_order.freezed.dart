// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fs_order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FSOrder _$FSOrderFromJson(Map<String, dynamic> json) {
  return FSOrder$.fromJson(json);
}

/// @nodoc
mixin _$FSOrder {
  String get orderId => throw _privateConstructorUsedError;
  String get productId => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FSOrderCopyWith<FSOrder> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FSOrderCopyWith<$Res> {
  factory $FSOrderCopyWith(FSOrder value, $Res Function(FSOrder) then) =
      _$FSOrderCopyWithImpl<$Res, FSOrder>;
  @useResult
  $Res call({String orderId, String productId, String date});
}

/// @nodoc
class _$FSOrderCopyWithImpl<$Res, $Val extends FSOrder>
    implements $FSOrderCopyWith<$Res> {
  _$FSOrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? productId = null,
    Object? date = null,
  }) {
    return _then(_value.copyWith(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FSOrder$CopyWith<$Res> implements $FSOrderCopyWith<$Res> {
  factory _$$FSOrder$CopyWith(
          _$FSOrder$ value, $Res Function(_$FSOrder$) then) =
      __$$FSOrder$CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String orderId, String productId, String date});
}

/// @nodoc
class __$$FSOrder$CopyWithImpl<$Res>
    extends _$FSOrderCopyWithImpl<$Res, _$FSOrder$>
    implements _$$FSOrder$CopyWith<$Res> {
  __$$FSOrder$CopyWithImpl(_$FSOrder$ _value, $Res Function(_$FSOrder$) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? productId = null,
    Object? date = null,
  }) {
    return _then(_$FSOrder$(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FSOrder$ implements FSOrder$ {
  const _$FSOrder$(
      {required this.orderId, required this.productId, required this.date});

  factory _$FSOrder$.fromJson(Map<String, dynamic> json) =>
      _$$FSOrder$FromJson(json);

  @override
  final String orderId;
  @override
  final String productId;
  @override
  final String date;

  @override
  String toString() {
    return 'FSOrder(orderId: $orderId, productId: $productId, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FSOrder$ &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, orderId, productId, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FSOrder$CopyWith<_$FSOrder$> get copyWith =>
      __$$FSOrder$CopyWithImpl<_$FSOrder$>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FSOrder$ToJson(
      this,
    );
  }
}

abstract class FSOrder$ implements FSOrder {
  const factory FSOrder$(
      {required final String orderId,
      required final String productId,
      required final String date}) = _$FSOrder$;

  factory FSOrder$.fromJson(Map<String, dynamic> json) = _$FSOrder$.fromJson;

  @override
  String get orderId;
  @override
  String get productId;
  @override
  String get date;
  @override
  @JsonKey(ignore: true)
  _$$FSOrder$CopyWith<_$FSOrder$> get copyWith =>
      throw _privateConstructorUsedError;
}
