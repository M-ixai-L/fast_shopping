// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'catalog_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CatalogEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUser,
    required TResult Function() getProducts,
    required TResult Function(String product) buyProduct,
    required TResult Function(String id) deleteProduct,
    required TResult Function(FSProduct product) addProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUser,
    TResult? Function()? getProducts,
    TResult? Function(String product)? buyProduct,
    TResult? Function(String id)? deleteProduct,
    TResult? Function(FSProduct product)? addProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUser,
    TResult Function()? getProducts,
    TResult Function(String product)? buyProduct,
    TResult Function(String id)? deleteProduct,
    TResult Function(FSProduct product)? addProduct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUser value) getUser,
    required TResult Function(GetProducts value) getProducts,
    required TResult Function(BuyProduct value) buyProduct,
    required TResult Function(DeleteProduct value) deleteProduct,
    required TResult Function(AddProduct value) addProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUser value)? getUser,
    TResult? Function(GetProducts value)? getProducts,
    TResult? Function(BuyProduct value)? buyProduct,
    TResult? Function(DeleteProduct value)? deleteProduct,
    TResult? Function(AddProduct value)? addProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUser value)? getUser,
    TResult Function(GetProducts value)? getProducts,
    TResult Function(BuyProduct value)? buyProduct,
    TResult Function(DeleteProduct value)? deleteProduct,
    TResult Function(AddProduct value)? addProduct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatalogEventCopyWith<$Res> {
  factory $CatalogEventCopyWith(
          CatalogEvent value, $Res Function(CatalogEvent) then) =
      _$CatalogEventCopyWithImpl<$Res, CatalogEvent>;
}

/// @nodoc
class _$CatalogEventCopyWithImpl<$Res, $Val extends CatalogEvent>
    implements $CatalogEventCopyWith<$Res> {
  _$CatalogEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetUserCopyWith<$Res> {
  factory _$$GetUserCopyWith(_$GetUser value, $Res Function(_$GetUser) then) =
      __$$GetUserCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetUserCopyWithImpl<$Res>
    extends _$CatalogEventCopyWithImpl<$Res, _$GetUser>
    implements _$$GetUserCopyWith<$Res> {
  __$$GetUserCopyWithImpl(_$GetUser _value, $Res Function(_$GetUser) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetUser implements GetUser {
  const _$GetUser();

  @override
  String toString() {
    return 'CatalogEvent.getUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUser,
    required TResult Function() getProducts,
    required TResult Function(String product) buyProduct,
    required TResult Function(String id) deleteProduct,
    required TResult Function(FSProduct product) addProduct,
  }) {
    return getUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUser,
    TResult? Function()? getProducts,
    TResult? Function(String product)? buyProduct,
    TResult? Function(String id)? deleteProduct,
    TResult? Function(FSProduct product)? addProduct,
  }) {
    return getUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUser,
    TResult Function()? getProducts,
    TResult Function(String product)? buyProduct,
    TResult Function(String id)? deleteProduct,
    TResult Function(FSProduct product)? addProduct,
    required TResult orElse(),
  }) {
    if (getUser != null) {
      return getUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUser value) getUser,
    required TResult Function(GetProducts value) getProducts,
    required TResult Function(BuyProduct value) buyProduct,
    required TResult Function(DeleteProduct value) deleteProduct,
    required TResult Function(AddProduct value) addProduct,
  }) {
    return getUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUser value)? getUser,
    TResult? Function(GetProducts value)? getProducts,
    TResult? Function(BuyProduct value)? buyProduct,
    TResult? Function(DeleteProduct value)? deleteProduct,
    TResult? Function(AddProduct value)? addProduct,
  }) {
    return getUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUser value)? getUser,
    TResult Function(GetProducts value)? getProducts,
    TResult Function(BuyProduct value)? buyProduct,
    TResult Function(DeleteProduct value)? deleteProduct,
    TResult Function(AddProduct value)? addProduct,
    required TResult orElse(),
  }) {
    if (getUser != null) {
      return getUser(this);
    }
    return orElse();
  }
}

abstract class GetUser implements CatalogEvent {
  const factory GetUser() = _$GetUser;
}

/// @nodoc
abstract class _$$GetProductsCopyWith<$Res> {
  factory _$$GetProductsCopyWith(
          _$GetProducts value, $Res Function(_$GetProducts) then) =
      __$$GetProductsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetProductsCopyWithImpl<$Res>
    extends _$CatalogEventCopyWithImpl<$Res, _$GetProducts>
    implements _$$GetProductsCopyWith<$Res> {
  __$$GetProductsCopyWithImpl(
      _$GetProducts _value, $Res Function(_$GetProducts) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetProducts implements GetProducts {
  const _$GetProducts();

  @override
  String toString() {
    return 'CatalogEvent.getProducts()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetProducts);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUser,
    required TResult Function() getProducts,
    required TResult Function(String product) buyProduct,
    required TResult Function(String id) deleteProduct,
    required TResult Function(FSProduct product) addProduct,
  }) {
    return getProducts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUser,
    TResult? Function()? getProducts,
    TResult? Function(String product)? buyProduct,
    TResult? Function(String id)? deleteProduct,
    TResult? Function(FSProduct product)? addProduct,
  }) {
    return getProducts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUser,
    TResult Function()? getProducts,
    TResult Function(String product)? buyProduct,
    TResult Function(String id)? deleteProduct,
    TResult Function(FSProduct product)? addProduct,
    required TResult orElse(),
  }) {
    if (getProducts != null) {
      return getProducts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUser value) getUser,
    required TResult Function(GetProducts value) getProducts,
    required TResult Function(BuyProduct value) buyProduct,
    required TResult Function(DeleteProduct value) deleteProduct,
    required TResult Function(AddProduct value) addProduct,
  }) {
    return getProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUser value)? getUser,
    TResult? Function(GetProducts value)? getProducts,
    TResult? Function(BuyProduct value)? buyProduct,
    TResult? Function(DeleteProduct value)? deleteProduct,
    TResult? Function(AddProduct value)? addProduct,
  }) {
    return getProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUser value)? getUser,
    TResult Function(GetProducts value)? getProducts,
    TResult Function(BuyProduct value)? buyProduct,
    TResult Function(DeleteProduct value)? deleteProduct,
    TResult Function(AddProduct value)? addProduct,
    required TResult orElse(),
  }) {
    if (getProducts != null) {
      return getProducts(this);
    }
    return orElse();
  }
}

abstract class GetProducts implements CatalogEvent {
  const factory GetProducts() = _$GetProducts;
}

/// @nodoc
abstract class _$$BuyProductCopyWith<$Res> {
  factory _$$BuyProductCopyWith(
          _$BuyProduct value, $Res Function(_$BuyProduct) then) =
      __$$BuyProductCopyWithImpl<$Res>;
  @useResult
  $Res call({String product});
}

/// @nodoc
class __$$BuyProductCopyWithImpl<$Res>
    extends _$CatalogEventCopyWithImpl<$Res, _$BuyProduct>
    implements _$$BuyProductCopyWith<$Res> {
  __$$BuyProductCopyWithImpl(
      _$BuyProduct _value, $Res Function(_$BuyProduct) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$BuyProduct(
      null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BuyProduct implements BuyProduct {
  const _$BuyProduct(this.product);

  @override
  final String product;

  @override
  String toString() {
    return 'CatalogEvent.buyProduct(product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BuyProduct &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BuyProductCopyWith<_$BuyProduct> get copyWith =>
      __$$BuyProductCopyWithImpl<_$BuyProduct>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUser,
    required TResult Function() getProducts,
    required TResult Function(String product) buyProduct,
    required TResult Function(String id) deleteProduct,
    required TResult Function(FSProduct product) addProduct,
  }) {
    return buyProduct(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUser,
    TResult? Function()? getProducts,
    TResult? Function(String product)? buyProduct,
    TResult? Function(String id)? deleteProduct,
    TResult? Function(FSProduct product)? addProduct,
  }) {
    return buyProduct?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUser,
    TResult Function()? getProducts,
    TResult Function(String product)? buyProduct,
    TResult Function(String id)? deleteProduct,
    TResult Function(FSProduct product)? addProduct,
    required TResult orElse(),
  }) {
    if (buyProduct != null) {
      return buyProduct(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUser value) getUser,
    required TResult Function(GetProducts value) getProducts,
    required TResult Function(BuyProduct value) buyProduct,
    required TResult Function(DeleteProduct value) deleteProduct,
    required TResult Function(AddProduct value) addProduct,
  }) {
    return buyProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUser value)? getUser,
    TResult? Function(GetProducts value)? getProducts,
    TResult? Function(BuyProduct value)? buyProduct,
    TResult? Function(DeleteProduct value)? deleteProduct,
    TResult? Function(AddProduct value)? addProduct,
  }) {
    return buyProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUser value)? getUser,
    TResult Function(GetProducts value)? getProducts,
    TResult Function(BuyProduct value)? buyProduct,
    TResult Function(DeleteProduct value)? deleteProduct,
    TResult Function(AddProduct value)? addProduct,
    required TResult orElse(),
  }) {
    if (buyProduct != null) {
      return buyProduct(this);
    }
    return orElse();
  }
}

abstract class BuyProduct implements CatalogEvent {
  const factory BuyProduct(final String product) = _$BuyProduct;

  String get product;
  @JsonKey(ignore: true)
  _$$BuyProductCopyWith<_$BuyProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteProductCopyWith<$Res> {
  factory _$$DeleteProductCopyWith(
          _$DeleteProduct value, $Res Function(_$DeleteProduct) then) =
      __$$DeleteProductCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$DeleteProductCopyWithImpl<$Res>
    extends _$CatalogEventCopyWithImpl<$Res, _$DeleteProduct>
    implements _$$DeleteProductCopyWith<$Res> {
  __$$DeleteProductCopyWithImpl(
      _$DeleteProduct _value, $Res Function(_$DeleteProduct) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DeleteProduct(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteProduct implements DeleteProduct {
  const _$DeleteProduct(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'CatalogEvent.deleteProduct(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteProduct &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteProductCopyWith<_$DeleteProduct> get copyWith =>
      __$$DeleteProductCopyWithImpl<_$DeleteProduct>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUser,
    required TResult Function() getProducts,
    required TResult Function(String product) buyProduct,
    required TResult Function(String id) deleteProduct,
    required TResult Function(FSProduct product) addProduct,
  }) {
    return deleteProduct(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUser,
    TResult? Function()? getProducts,
    TResult? Function(String product)? buyProduct,
    TResult? Function(String id)? deleteProduct,
    TResult? Function(FSProduct product)? addProduct,
  }) {
    return deleteProduct?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUser,
    TResult Function()? getProducts,
    TResult Function(String product)? buyProduct,
    TResult Function(String id)? deleteProduct,
    TResult Function(FSProduct product)? addProduct,
    required TResult orElse(),
  }) {
    if (deleteProduct != null) {
      return deleteProduct(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUser value) getUser,
    required TResult Function(GetProducts value) getProducts,
    required TResult Function(BuyProduct value) buyProduct,
    required TResult Function(DeleteProduct value) deleteProduct,
    required TResult Function(AddProduct value) addProduct,
  }) {
    return deleteProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUser value)? getUser,
    TResult? Function(GetProducts value)? getProducts,
    TResult? Function(BuyProduct value)? buyProduct,
    TResult? Function(DeleteProduct value)? deleteProduct,
    TResult? Function(AddProduct value)? addProduct,
  }) {
    return deleteProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUser value)? getUser,
    TResult Function(GetProducts value)? getProducts,
    TResult Function(BuyProduct value)? buyProduct,
    TResult Function(DeleteProduct value)? deleteProduct,
    TResult Function(AddProduct value)? addProduct,
    required TResult orElse(),
  }) {
    if (deleteProduct != null) {
      return deleteProduct(this);
    }
    return orElse();
  }
}

abstract class DeleteProduct implements CatalogEvent {
  const factory DeleteProduct(final String id) = _$DeleteProduct;

  String get id;
  @JsonKey(ignore: true)
  _$$DeleteProductCopyWith<_$DeleteProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddProductCopyWith<$Res> {
  factory _$$AddProductCopyWith(
          _$AddProduct value, $Res Function(_$AddProduct) then) =
      __$$AddProductCopyWithImpl<$Res>;
  @useResult
  $Res call({FSProduct product});

  $FSProductCopyWith<$Res> get product;
}

/// @nodoc
class __$$AddProductCopyWithImpl<$Res>
    extends _$CatalogEventCopyWithImpl<$Res, _$AddProduct>
    implements _$$AddProductCopyWith<$Res> {
  __$$AddProductCopyWithImpl(
      _$AddProduct _value, $Res Function(_$AddProduct) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$AddProduct(
      null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as FSProduct,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $FSProductCopyWith<$Res> get product {
    return $FSProductCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value));
    });
  }
}

/// @nodoc

class _$AddProduct implements AddProduct {
  const _$AddProduct(this.product);

  @override
  final FSProduct product;

  @override
  String toString() {
    return 'CatalogEvent.addProduct(product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddProduct &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddProductCopyWith<_$AddProduct> get copyWith =>
      __$$AddProductCopyWithImpl<_$AddProduct>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUser,
    required TResult Function() getProducts,
    required TResult Function(String product) buyProduct,
    required TResult Function(String id) deleteProduct,
    required TResult Function(FSProduct product) addProduct,
  }) {
    return addProduct(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUser,
    TResult? Function()? getProducts,
    TResult? Function(String product)? buyProduct,
    TResult? Function(String id)? deleteProduct,
    TResult? Function(FSProduct product)? addProduct,
  }) {
    return addProduct?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUser,
    TResult Function()? getProducts,
    TResult Function(String product)? buyProduct,
    TResult Function(String id)? deleteProduct,
    TResult Function(FSProduct product)? addProduct,
    required TResult orElse(),
  }) {
    if (addProduct != null) {
      return addProduct(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUser value) getUser,
    required TResult Function(GetProducts value) getProducts,
    required TResult Function(BuyProduct value) buyProduct,
    required TResult Function(DeleteProduct value) deleteProduct,
    required TResult Function(AddProduct value) addProduct,
  }) {
    return addProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUser value)? getUser,
    TResult? Function(GetProducts value)? getProducts,
    TResult? Function(BuyProduct value)? buyProduct,
    TResult? Function(DeleteProduct value)? deleteProduct,
    TResult? Function(AddProduct value)? addProduct,
  }) {
    return addProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUser value)? getUser,
    TResult Function(GetProducts value)? getProducts,
    TResult Function(BuyProduct value)? buyProduct,
    TResult Function(DeleteProduct value)? deleteProduct,
    TResult Function(AddProduct value)? addProduct,
    required TResult orElse(),
  }) {
    if (addProduct != null) {
      return addProduct(this);
    }
    return orElse();
  }
}

abstract class AddProduct implements CatalogEvent {
  const factory AddProduct(final FSProduct product) = _$AddProduct;

  FSProduct get product;
  @JsonKey(ignore: true)
  _$$AddProductCopyWith<_$AddProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CatalogState {
  List<FSProduct> get products => throw _privateConstructorUsedError;
  FSUser? get user => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CatalogStateCopyWith<CatalogState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatalogStateCopyWith<$Res> {
  factory $CatalogStateCopyWith(
          CatalogState value, $Res Function(CatalogState) then) =
      _$CatalogStateCopyWithImpl<$Res, CatalogState>;
  @useResult
  $Res call({List<FSProduct> products, FSUser? user, bool isLoading});

  $FSUserCopyWith<$Res>? get user;
}

/// @nodoc
class _$CatalogStateCopyWithImpl<$Res, $Val extends CatalogState>
    implements $CatalogStateCopyWith<$Res> {
  _$CatalogStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? user = freezed,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<FSProduct>,
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
abstract class _$$_CatalogState$CopyWith<$Res>
    implements $CatalogStateCopyWith<$Res> {
  factory _$$_CatalogState$CopyWith(
          _$_CatalogState$ value, $Res Function(_$_CatalogState$) then) =
      __$$_CatalogState$CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<FSProduct> products, FSUser? user, bool isLoading});

  @override
  $FSUserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$_CatalogState$CopyWithImpl<$Res>
    extends _$CatalogStateCopyWithImpl<$Res, _$_CatalogState$>
    implements _$$_CatalogState$CopyWith<$Res> {
  __$$_CatalogState$CopyWithImpl(
      _$_CatalogState$ _value, $Res Function(_$_CatalogState$) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? user = freezed,
    Object? isLoading = null,
  }) {
    return _then(_$_CatalogState$(
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<FSProduct>,
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

class _$_CatalogState$ implements _CatalogState$ {
  const _$_CatalogState$(
      {final List<FSProduct> products = const [],
      this.user,
      this.isLoading = false})
      : _products = products;

  final List<FSProduct> _products;
  @override
  @JsonKey()
  List<FSProduct> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  final FSUser? user;
  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'CatalogState(products: $products, user: $user, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CatalogState$ &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_products), user, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CatalogState$CopyWith<_$_CatalogState$> get copyWith =>
      __$$_CatalogState$CopyWithImpl<_$_CatalogState$>(this, _$identity);
}

abstract class _CatalogState$ implements CatalogState {
  const factory _CatalogState$(
      {final List<FSProduct> products,
      final FSUser? user,
      final bool isLoading}) = _$_CatalogState$;

  @override
  List<FSProduct> get products;
  @override
  FSUser? get user;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$_CatalogState$CopyWith<_$_CatalogState$> get copyWith =>
      throw _privateConstructorUsedError;
}
