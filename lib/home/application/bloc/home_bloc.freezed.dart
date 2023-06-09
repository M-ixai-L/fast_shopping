// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeEvent {
  String get productId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String productId) getProduct,
    required TResult Function(String productId) buyProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String productId)? getProduct,
    TResult? Function(String productId)? buyProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String productId)? getProduct,
    TResult Function(String productId)? buyProduct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetProduct value) getProduct,
    required TResult Function(BuyProduct value) buyProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetProduct value)? getProduct,
    TResult? Function(BuyProduct value)? buyProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetProduct value)? getProduct,
    TResult Function(BuyProduct value)? buyProduct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeEventCopyWith<HomeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
  @useResult
  $Res call({String productId});
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
  }) {
    return _then(_value.copyWith(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetProductCopyWith<$Res> implements $HomeEventCopyWith<$Res> {
  factory _$$GetProductCopyWith(
          _$GetProduct value, $Res Function(_$GetProduct) then) =
      __$$GetProductCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String productId});
}

/// @nodoc
class __$$GetProductCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetProduct>
    implements _$$GetProductCopyWith<$Res> {
  __$$GetProductCopyWithImpl(
      _$GetProduct _value, $Res Function(_$GetProduct) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
  }) {
    return _then(_$GetProduct(
      null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetProduct implements GetProduct {
  const _$GetProduct(this.productId);

  @override
  final String productId;

  @override
  String toString() {
    return 'HomeEvent.getProduct(productId: $productId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetProduct &&
            (identical(other.productId, productId) ||
                other.productId == productId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetProductCopyWith<_$GetProduct> get copyWith =>
      __$$GetProductCopyWithImpl<_$GetProduct>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String productId) getProduct,
    required TResult Function(String productId) buyProduct,
  }) {
    return getProduct(productId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String productId)? getProduct,
    TResult? Function(String productId)? buyProduct,
  }) {
    return getProduct?.call(productId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String productId)? getProduct,
    TResult Function(String productId)? buyProduct,
    required TResult orElse(),
  }) {
    if (getProduct != null) {
      return getProduct(productId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetProduct value) getProduct,
    required TResult Function(BuyProduct value) buyProduct,
  }) {
    return getProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetProduct value)? getProduct,
    TResult? Function(BuyProduct value)? buyProduct,
  }) {
    return getProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetProduct value)? getProduct,
    TResult Function(BuyProduct value)? buyProduct,
    required TResult orElse(),
  }) {
    if (getProduct != null) {
      return getProduct(this);
    }
    return orElse();
  }
}

abstract class GetProduct implements HomeEvent {
  const factory GetProduct(final String productId) = _$GetProduct;

  @override
  String get productId;
  @override
  @JsonKey(ignore: true)
  _$$GetProductCopyWith<_$GetProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BuyProductCopyWith<$Res> implements $HomeEventCopyWith<$Res> {
  factory _$$BuyProductCopyWith(
          _$BuyProduct value, $Res Function(_$BuyProduct) then) =
      __$$BuyProductCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String productId});
}

/// @nodoc
class __$$BuyProductCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$BuyProduct>
    implements _$$BuyProductCopyWith<$Res> {
  __$$BuyProductCopyWithImpl(
      _$BuyProduct _value, $Res Function(_$BuyProduct) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
  }) {
    return _then(_$BuyProduct(
      null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BuyProduct implements BuyProduct {
  const _$BuyProduct(this.productId);

  @override
  final String productId;

  @override
  String toString() {
    return 'HomeEvent.buyProduct(productId: $productId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BuyProduct &&
            (identical(other.productId, productId) ||
                other.productId == productId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BuyProductCopyWith<_$BuyProduct> get copyWith =>
      __$$BuyProductCopyWithImpl<_$BuyProduct>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String productId) getProduct,
    required TResult Function(String productId) buyProduct,
  }) {
    return buyProduct(productId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String productId)? getProduct,
    TResult? Function(String productId)? buyProduct,
  }) {
    return buyProduct?.call(productId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String productId)? getProduct,
    TResult Function(String productId)? buyProduct,
    required TResult orElse(),
  }) {
    if (buyProduct != null) {
      return buyProduct(productId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetProduct value) getProduct,
    required TResult Function(BuyProduct value) buyProduct,
  }) {
    return buyProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetProduct value)? getProduct,
    TResult? Function(BuyProduct value)? buyProduct,
  }) {
    return buyProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetProduct value)? getProduct,
    TResult Function(BuyProduct value)? buyProduct,
    required TResult orElse(),
  }) {
    if (buyProduct != null) {
      return buyProduct(this);
    }
    return orElse();
  }
}

abstract class BuyProduct implements HomeEvent {
  const factory BuyProduct(final String productId) = _$BuyProduct;

  @override
  String get productId;
  @override
  @JsonKey(ignore: true)
  _$$BuyProductCopyWith<_$BuyProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeState {
  FSProduct? get product => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call({FSProduct? product, bool isLoading});

  $FSProductCopyWith<$Res>? get product;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = freezed,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as FSProduct?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FSProductCopyWith<$Res>? get product {
    if (_value.product == null) {
      return null;
    }

    return $FSProductCopyWith<$Res>(_value.product!, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_HomeState$CopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$_HomeState$CopyWith(
          _$_HomeState$ value, $Res Function(_$_HomeState$) then) =
      __$$_HomeState$CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FSProduct? product, bool isLoading});

  @override
  $FSProductCopyWith<$Res>? get product;
}

/// @nodoc
class __$$_HomeState$CopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_HomeState$>
    implements _$$_HomeState$CopyWith<$Res> {
  __$$_HomeState$CopyWithImpl(
      _$_HomeState$ _value, $Res Function(_$_HomeState$) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = freezed,
    Object? isLoading = null,
  }) {
    return _then(_$_HomeState$(
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as FSProduct?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_HomeState$ implements _HomeState$ {
  const _$_HomeState$({this.product, this.isLoading = false});

  @override
  final FSProduct? product;
  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'HomeState(product: $product, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeState$ &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeState$CopyWith<_$_HomeState$> get copyWith =>
      __$$_HomeState$CopyWithImpl<_$_HomeState$>(this, _$identity);
}

abstract class _HomeState$ implements HomeState {
  const factory _HomeState$({final FSProduct? product, final bool isLoading}) =
      _$_HomeState$;

  @override
  FSProduct? get product;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$_HomeState$CopyWith<_$_HomeState$> get copyWith =>
      throw _privateConstructorUsedError;
}
