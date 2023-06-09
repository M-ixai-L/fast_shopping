// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'history_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HistoryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUser,
    required TResult Function() getProducts,
    required TResult Function(String product) payProduct,
    required TResult Function(String id) deleteProduct,
    required TResult Function(FSUser user) emitUser,
    required TResult Function(List<FSOrder> product) emitProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUser,
    TResult? Function()? getProducts,
    TResult? Function(String product)? payProduct,
    TResult? Function(String id)? deleteProduct,
    TResult? Function(FSUser user)? emitUser,
    TResult? Function(List<FSOrder> product)? emitProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUser,
    TResult Function()? getProducts,
    TResult Function(String product)? payProduct,
    TResult Function(String id)? deleteProduct,
    TResult Function(FSUser user)? emitUser,
    TResult Function(List<FSOrder> product)? emitProduct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUser value) getUser,
    required TResult Function(GetProducts value) getProducts,
    required TResult Function(PayProduct value) payProduct,
    required TResult Function(DeleteProduct value) deleteProduct,
    required TResult Function(EmitUser value) emitUser,
    required TResult Function(EmitProduct value) emitProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUser value)? getUser,
    TResult? Function(GetProducts value)? getProducts,
    TResult? Function(PayProduct value)? payProduct,
    TResult? Function(DeleteProduct value)? deleteProduct,
    TResult? Function(EmitUser value)? emitUser,
    TResult? Function(EmitProduct value)? emitProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUser value)? getUser,
    TResult Function(GetProducts value)? getProducts,
    TResult Function(PayProduct value)? payProduct,
    TResult Function(DeleteProduct value)? deleteProduct,
    TResult Function(EmitUser value)? emitUser,
    TResult Function(EmitProduct value)? emitProduct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryEventCopyWith<$Res> {
  factory $HistoryEventCopyWith(
          HistoryEvent value, $Res Function(HistoryEvent) then) =
      _$HistoryEventCopyWithImpl<$Res, HistoryEvent>;
}

/// @nodoc
class _$HistoryEventCopyWithImpl<$Res, $Val extends HistoryEvent>
    implements $HistoryEventCopyWith<$Res> {
  _$HistoryEventCopyWithImpl(this._value, this._then);

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
    extends _$HistoryEventCopyWithImpl<$Res, _$GetUser>
    implements _$$GetUserCopyWith<$Res> {
  __$$GetUserCopyWithImpl(_$GetUser _value, $Res Function(_$GetUser) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetUser implements GetUser {
  const _$GetUser();

  @override
  String toString() {
    return 'HistoryEvent.getUser()';
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
    required TResult Function(String product) payProduct,
    required TResult Function(String id) deleteProduct,
    required TResult Function(FSUser user) emitUser,
    required TResult Function(List<FSOrder> product) emitProduct,
  }) {
    return getUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUser,
    TResult? Function()? getProducts,
    TResult? Function(String product)? payProduct,
    TResult? Function(String id)? deleteProduct,
    TResult? Function(FSUser user)? emitUser,
    TResult? Function(List<FSOrder> product)? emitProduct,
  }) {
    return getUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUser,
    TResult Function()? getProducts,
    TResult Function(String product)? payProduct,
    TResult Function(String id)? deleteProduct,
    TResult Function(FSUser user)? emitUser,
    TResult Function(List<FSOrder> product)? emitProduct,
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
    required TResult Function(PayProduct value) payProduct,
    required TResult Function(DeleteProduct value) deleteProduct,
    required TResult Function(EmitUser value) emitUser,
    required TResult Function(EmitProduct value) emitProduct,
  }) {
    return getUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUser value)? getUser,
    TResult? Function(GetProducts value)? getProducts,
    TResult? Function(PayProduct value)? payProduct,
    TResult? Function(DeleteProduct value)? deleteProduct,
    TResult? Function(EmitUser value)? emitUser,
    TResult? Function(EmitProduct value)? emitProduct,
  }) {
    return getUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUser value)? getUser,
    TResult Function(GetProducts value)? getProducts,
    TResult Function(PayProduct value)? payProduct,
    TResult Function(DeleteProduct value)? deleteProduct,
    TResult Function(EmitUser value)? emitUser,
    TResult Function(EmitProduct value)? emitProduct,
    required TResult orElse(),
  }) {
    if (getUser != null) {
      return getUser(this);
    }
    return orElse();
  }
}

abstract class GetUser implements HistoryEvent {
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
    extends _$HistoryEventCopyWithImpl<$Res, _$GetProducts>
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
    return 'HistoryEvent.getProducts()';
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
    required TResult Function(String product) payProduct,
    required TResult Function(String id) deleteProduct,
    required TResult Function(FSUser user) emitUser,
    required TResult Function(List<FSOrder> product) emitProduct,
  }) {
    return getProducts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUser,
    TResult? Function()? getProducts,
    TResult? Function(String product)? payProduct,
    TResult? Function(String id)? deleteProduct,
    TResult? Function(FSUser user)? emitUser,
    TResult? Function(List<FSOrder> product)? emitProduct,
  }) {
    return getProducts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUser,
    TResult Function()? getProducts,
    TResult Function(String product)? payProduct,
    TResult Function(String id)? deleteProduct,
    TResult Function(FSUser user)? emitUser,
    TResult Function(List<FSOrder> product)? emitProduct,
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
    required TResult Function(PayProduct value) payProduct,
    required TResult Function(DeleteProduct value) deleteProduct,
    required TResult Function(EmitUser value) emitUser,
    required TResult Function(EmitProduct value) emitProduct,
  }) {
    return getProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUser value)? getUser,
    TResult? Function(GetProducts value)? getProducts,
    TResult? Function(PayProduct value)? payProduct,
    TResult? Function(DeleteProduct value)? deleteProduct,
    TResult? Function(EmitUser value)? emitUser,
    TResult? Function(EmitProduct value)? emitProduct,
  }) {
    return getProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUser value)? getUser,
    TResult Function(GetProducts value)? getProducts,
    TResult Function(PayProduct value)? payProduct,
    TResult Function(DeleteProduct value)? deleteProduct,
    TResult Function(EmitUser value)? emitUser,
    TResult Function(EmitProduct value)? emitProduct,
    required TResult orElse(),
  }) {
    if (getProducts != null) {
      return getProducts(this);
    }
    return orElse();
  }
}

abstract class GetProducts implements HistoryEvent {
  const factory GetProducts() = _$GetProducts;
}

/// @nodoc
abstract class _$$PayProductCopyWith<$Res> {
  factory _$$PayProductCopyWith(
          _$PayProduct value, $Res Function(_$PayProduct) then) =
      __$$PayProductCopyWithImpl<$Res>;
  @useResult
  $Res call({String product});
}

/// @nodoc
class __$$PayProductCopyWithImpl<$Res>
    extends _$HistoryEventCopyWithImpl<$Res, _$PayProduct>
    implements _$$PayProductCopyWith<$Res> {
  __$$PayProductCopyWithImpl(
      _$PayProduct _value, $Res Function(_$PayProduct) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$PayProduct(
      null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PayProduct implements PayProduct {
  const _$PayProduct(this.product);

  @override
  final String product;

  @override
  String toString() {
    return 'HistoryEvent.payProduct(product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PayProduct &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PayProductCopyWith<_$PayProduct> get copyWith =>
      __$$PayProductCopyWithImpl<_$PayProduct>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUser,
    required TResult Function() getProducts,
    required TResult Function(String product) payProduct,
    required TResult Function(String id) deleteProduct,
    required TResult Function(FSUser user) emitUser,
    required TResult Function(List<FSOrder> product) emitProduct,
  }) {
    return payProduct(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUser,
    TResult? Function()? getProducts,
    TResult? Function(String product)? payProduct,
    TResult? Function(String id)? deleteProduct,
    TResult? Function(FSUser user)? emitUser,
    TResult? Function(List<FSOrder> product)? emitProduct,
  }) {
    return payProduct?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUser,
    TResult Function()? getProducts,
    TResult Function(String product)? payProduct,
    TResult Function(String id)? deleteProduct,
    TResult Function(FSUser user)? emitUser,
    TResult Function(List<FSOrder> product)? emitProduct,
    required TResult orElse(),
  }) {
    if (payProduct != null) {
      return payProduct(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUser value) getUser,
    required TResult Function(GetProducts value) getProducts,
    required TResult Function(PayProduct value) payProduct,
    required TResult Function(DeleteProduct value) deleteProduct,
    required TResult Function(EmitUser value) emitUser,
    required TResult Function(EmitProduct value) emitProduct,
  }) {
    return payProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUser value)? getUser,
    TResult? Function(GetProducts value)? getProducts,
    TResult? Function(PayProduct value)? payProduct,
    TResult? Function(DeleteProduct value)? deleteProduct,
    TResult? Function(EmitUser value)? emitUser,
    TResult? Function(EmitProduct value)? emitProduct,
  }) {
    return payProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUser value)? getUser,
    TResult Function(GetProducts value)? getProducts,
    TResult Function(PayProduct value)? payProduct,
    TResult Function(DeleteProduct value)? deleteProduct,
    TResult Function(EmitUser value)? emitUser,
    TResult Function(EmitProduct value)? emitProduct,
    required TResult orElse(),
  }) {
    if (payProduct != null) {
      return payProduct(this);
    }
    return orElse();
  }
}

abstract class PayProduct implements HistoryEvent {
  const factory PayProduct(final String product) = _$PayProduct;

  String get product;
  @JsonKey(ignore: true)
  _$$PayProductCopyWith<_$PayProduct> get copyWith =>
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
    extends _$HistoryEventCopyWithImpl<$Res, _$DeleteProduct>
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
    return 'HistoryEvent.deleteProduct(id: $id)';
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
    required TResult Function(String product) payProduct,
    required TResult Function(String id) deleteProduct,
    required TResult Function(FSUser user) emitUser,
    required TResult Function(List<FSOrder> product) emitProduct,
  }) {
    return deleteProduct(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUser,
    TResult? Function()? getProducts,
    TResult? Function(String product)? payProduct,
    TResult? Function(String id)? deleteProduct,
    TResult? Function(FSUser user)? emitUser,
    TResult? Function(List<FSOrder> product)? emitProduct,
  }) {
    return deleteProduct?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUser,
    TResult Function()? getProducts,
    TResult Function(String product)? payProduct,
    TResult Function(String id)? deleteProduct,
    TResult Function(FSUser user)? emitUser,
    TResult Function(List<FSOrder> product)? emitProduct,
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
    required TResult Function(PayProduct value) payProduct,
    required TResult Function(DeleteProduct value) deleteProduct,
    required TResult Function(EmitUser value) emitUser,
    required TResult Function(EmitProduct value) emitProduct,
  }) {
    return deleteProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUser value)? getUser,
    TResult? Function(GetProducts value)? getProducts,
    TResult? Function(PayProduct value)? payProduct,
    TResult? Function(DeleteProduct value)? deleteProduct,
    TResult? Function(EmitUser value)? emitUser,
    TResult? Function(EmitProduct value)? emitProduct,
  }) {
    return deleteProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUser value)? getUser,
    TResult Function(GetProducts value)? getProducts,
    TResult Function(PayProduct value)? payProduct,
    TResult Function(DeleteProduct value)? deleteProduct,
    TResult Function(EmitUser value)? emitUser,
    TResult Function(EmitProduct value)? emitProduct,
    required TResult orElse(),
  }) {
    if (deleteProduct != null) {
      return deleteProduct(this);
    }
    return orElse();
  }
}

abstract class DeleteProduct implements HistoryEvent {
  const factory DeleteProduct(final String id) = _$DeleteProduct;

  String get id;
  @JsonKey(ignore: true)
  _$$DeleteProductCopyWith<_$DeleteProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmitUserCopyWith<$Res> {
  factory _$$EmitUserCopyWith(
          _$EmitUser value, $Res Function(_$EmitUser) then) =
      __$$EmitUserCopyWithImpl<$Res>;
  @useResult
  $Res call({FSUser user});

  $FSUserCopyWith<$Res> get user;
}

/// @nodoc
class __$$EmitUserCopyWithImpl<$Res>
    extends _$HistoryEventCopyWithImpl<$Res, _$EmitUser>
    implements _$$EmitUserCopyWith<$Res> {
  __$$EmitUserCopyWithImpl(_$EmitUser _value, $Res Function(_$EmitUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$EmitUser(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as FSUser,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $FSUserCopyWith<$Res> get user {
    return $FSUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$EmitUser implements EmitUser {
  const _$EmitUser(this.user);

  @override
  final FSUser user;

  @override
  String toString() {
    return 'HistoryEvent.emitUser(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmitUser &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmitUserCopyWith<_$EmitUser> get copyWith =>
      __$$EmitUserCopyWithImpl<_$EmitUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUser,
    required TResult Function() getProducts,
    required TResult Function(String product) payProduct,
    required TResult Function(String id) deleteProduct,
    required TResult Function(FSUser user) emitUser,
    required TResult Function(List<FSOrder> product) emitProduct,
  }) {
    return emitUser(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUser,
    TResult? Function()? getProducts,
    TResult? Function(String product)? payProduct,
    TResult? Function(String id)? deleteProduct,
    TResult? Function(FSUser user)? emitUser,
    TResult? Function(List<FSOrder> product)? emitProduct,
  }) {
    return emitUser?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUser,
    TResult Function()? getProducts,
    TResult Function(String product)? payProduct,
    TResult Function(String id)? deleteProduct,
    TResult Function(FSUser user)? emitUser,
    TResult Function(List<FSOrder> product)? emitProduct,
    required TResult orElse(),
  }) {
    if (emitUser != null) {
      return emitUser(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUser value) getUser,
    required TResult Function(GetProducts value) getProducts,
    required TResult Function(PayProduct value) payProduct,
    required TResult Function(DeleteProduct value) deleteProduct,
    required TResult Function(EmitUser value) emitUser,
    required TResult Function(EmitProduct value) emitProduct,
  }) {
    return emitUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUser value)? getUser,
    TResult? Function(GetProducts value)? getProducts,
    TResult? Function(PayProduct value)? payProduct,
    TResult? Function(DeleteProduct value)? deleteProduct,
    TResult? Function(EmitUser value)? emitUser,
    TResult? Function(EmitProduct value)? emitProduct,
  }) {
    return emitUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUser value)? getUser,
    TResult Function(GetProducts value)? getProducts,
    TResult Function(PayProduct value)? payProduct,
    TResult Function(DeleteProduct value)? deleteProduct,
    TResult Function(EmitUser value)? emitUser,
    TResult Function(EmitProduct value)? emitProduct,
    required TResult orElse(),
  }) {
    if (emitUser != null) {
      return emitUser(this);
    }
    return orElse();
  }
}

abstract class EmitUser implements HistoryEvent {
  const factory EmitUser(final FSUser user) = _$EmitUser;

  FSUser get user;
  @JsonKey(ignore: true)
  _$$EmitUserCopyWith<_$EmitUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmitProductCopyWith<$Res> {
  factory _$$EmitProductCopyWith(
          _$EmitProduct value, $Res Function(_$EmitProduct) then) =
      __$$EmitProductCopyWithImpl<$Res>;
  @useResult
  $Res call({List<FSOrder> product});
}

/// @nodoc
class __$$EmitProductCopyWithImpl<$Res>
    extends _$HistoryEventCopyWithImpl<$Res, _$EmitProduct>
    implements _$$EmitProductCopyWith<$Res> {
  __$$EmitProductCopyWithImpl(
      _$EmitProduct _value, $Res Function(_$EmitProduct) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$EmitProduct(
      null == product
          ? _value._product
          : product // ignore: cast_nullable_to_non_nullable
              as List<FSOrder>,
    ));
  }
}

/// @nodoc

class _$EmitProduct implements EmitProduct {
  const _$EmitProduct(final List<FSOrder> product) : _product = product;

  final List<FSOrder> _product;
  @override
  List<FSOrder> get product {
    if (_product is EqualUnmodifiableListView) return _product;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_product);
  }

  @override
  String toString() {
    return 'HistoryEvent.emitProduct(product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmitProduct &&
            const DeepCollectionEquality().equals(other._product, _product));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_product));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmitProductCopyWith<_$EmitProduct> get copyWith =>
      __$$EmitProductCopyWithImpl<_$EmitProduct>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUser,
    required TResult Function() getProducts,
    required TResult Function(String product) payProduct,
    required TResult Function(String id) deleteProduct,
    required TResult Function(FSUser user) emitUser,
    required TResult Function(List<FSOrder> product) emitProduct,
  }) {
    return emitProduct(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUser,
    TResult? Function()? getProducts,
    TResult? Function(String product)? payProduct,
    TResult? Function(String id)? deleteProduct,
    TResult? Function(FSUser user)? emitUser,
    TResult? Function(List<FSOrder> product)? emitProduct,
  }) {
    return emitProduct?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUser,
    TResult Function()? getProducts,
    TResult Function(String product)? payProduct,
    TResult Function(String id)? deleteProduct,
    TResult Function(FSUser user)? emitUser,
    TResult Function(List<FSOrder> product)? emitProduct,
    required TResult orElse(),
  }) {
    if (emitProduct != null) {
      return emitProduct(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUser value) getUser,
    required TResult Function(GetProducts value) getProducts,
    required TResult Function(PayProduct value) payProduct,
    required TResult Function(DeleteProduct value) deleteProduct,
    required TResult Function(EmitUser value) emitUser,
    required TResult Function(EmitProduct value) emitProduct,
  }) {
    return emitProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUser value)? getUser,
    TResult? Function(GetProducts value)? getProducts,
    TResult? Function(PayProduct value)? payProduct,
    TResult? Function(DeleteProduct value)? deleteProduct,
    TResult? Function(EmitUser value)? emitUser,
    TResult? Function(EmitProduct value)? emitProduct,
  }) {
    return emitProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUser value)? getUser,
    TResult Function(GetProducts value)? getProducts,
    TResult Function(PayProduct value)? payProduct,
    TResult Function(DeleteProduct value)? deleteProduct,
    TResult Function(EmitUser value)? emitUser,
    TResult Function(EmitProduct value)? emitProduct,
    required TResult orElse(),
  }) {
    if (emitProduct != null) {
      return emitProduct(this);
    }
    return orElse();
  }
}

abstract class EmitProduct implements HistoryEvent {
  const factory EmitProduct(final List<FSOrder> product) = _$EmitProduct;

  List<FSOrder> get product;
  @JsonKey(ignore: true)
  _$$EmitProductCopyWith<_$EmitProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HistoryState {
  List<FSProduct> get products => throw _privateConstructorUsedError;
  List<FSOrder> get orders => throw _privateConstructorUsedError;
  FSUser? get user => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HistoryStateCopyWith<HistoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryStateCopyWith<$Res> {
  factory $HistoryStateCopyWith(
          HistoryState value, $Res Function(HistoryState) then) =
      _$HistoryStateCopyWithImpl<$Res, HistoryState>;
  @useResult
  $Res call(
      {List<FSProduct> products,
      List<FSOrder> orders,
      FSUser? user,
      bool isLoading});

  $FSUserCopyWith<$Res>? get user;
}

/// @nodoc
class _$HistoryStateCopyWithImpl<$Res, $Val extends HistoryState>
    implements $HistoryStateCopyWith<$Res> {
  _$HistoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? orders = null,
    Object? user = freezed,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<FSProduct>,
      orders: null == orders
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<FSOrder>,
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
abstract class _$$_HistoryState$CopyWith<$Res>
    implements $HistoryStateCopyWith<$Res> {
  factory _$$_HistoryState$CopyWith(
          _$_HistoryState$ value, $Res Function(_$_HistoryState$) then) =
      __$$_HistoryState$CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<FSProduct> products,
      List<FSOrder> orders,
      FSUser? user,
      bool isLoading});

  @override
  $FSUserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$_HistoryState$CopyWithImpl<$Res>
    extends _$HistoryStateCopyWithImpl<$Res, _$_HistoryState$>
    implements _$$_HistoryState$CopyWith<$Res> {
  __$$_HistoryState$CopyWithImpl(
      _$_HistoryState$ _value, $Res Function(_$_HistoryState$) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? orders = null,
    Object? user = freezed,
    Object? isLoading = null,
  }) {
    return _then(_$_HistoryState$(
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<FSProduct>,
      orders: null == orders
          ? _value._orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<FSOrder>,
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

class _$_HistoryState$ implements _HistoryState$ {
  const _$_HistoryState$(
      {final List<FSProduct> products = const [],
      final List<FSOrder> orders = const [],
      this.user,
      this.isLoading = false})
      : _products = products,
        _orders = orders;

  final List<FSProduct> _products;
  @override
  @JsonKey()
  List<FSProduct> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  final List<FSOrder> _orders;
  @override
  @JsonKey()
  List<FSOrder> get orders {
    if (_orders is EqualUnmodifiableListView) return _orders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orders);
  }

  @override
  final FSUser? user;
  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'HistoryState(products: $products, orders: $orders, user: $user, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HistoryState$ &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            const DeepCollectionEquality().equals(other._orders, _orders) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_products),
      const DeepCollectionEquality().hash(_orders),
      user,
      isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HistoryState$CopyWith<_$_HistoryState$> get copyWith =>
      __$$_HistoryState$CopyWithImpl<_$_HistoryState$>(this, _$identity);
}

abstract class _HistoryState$ implements HistoryState {
  const factory _HistoryState$(
      {final List<FSProduct> products,
      final List<FSOrder> orders,
      final FSUser? user,
      final bool isLoading}) = _$_HistoryState$;

  @override
  List<FSProduct> get products;
  @override
  List<FSOrder> get orders;
  @override
  FSUser? get user;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$_HistoryState$CopyWith<_$_HistoryState$> get copyWith =>
      throw _privateConstructorUsedError;
}
