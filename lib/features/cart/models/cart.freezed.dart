// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Cart _$CartFromJson(Map<String, dynamic> json) {
  return _Cart.fromJson(json);
}

/// @nodoc
mixin _$Cart {
  @JsonKey(name: 'id', required: true, nullable: false)
  int get cartId => throw _privateConstructorUsedError;
  @JsonKey(required: true, nullable: false, name: 'total')
  TotalPrice get totalPrice => throw _privateConstructorUsedError;
  @JsonKey(required: true, nullable: false, name: 'items')
  int get itemsCount => throw _privateConstructorUsedError;
  @JsonKey(required: false, nullable: true)
  List<CartProduct>? get products => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartCopyWith<Cart> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartCopyWith<$Res> {
  factory $CartCopyWith(Cart value, $Res Function(Cart) then) =
      _$CartCopyWithImpl<$Res, Cart>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id', required: true, nullable: false)
          int cartId,
      @JsonKey(required: true, nullable: false, name: 'total')
          TotalPrice totalPrice,
      @JsonKey(required: true, nullable: false, name: 'items')
          int itemsCount,
      @JsonKey(required: false, nullable: true)
          List<CartProduct>? products});

  $TotalPriceCopyWith<$Res> get totalPrice;
}

/// @nodoc
class _$CartCopyWithImpl<$Res, $Val extends Cart>
    implements $CartCopyWith<$Res> {
  _$CartCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartId = null,
    Object? totalPrice = null,
    Object? itemsCount = null,
    Object? products = freezed,
  }) {
    return _then(_value.copyWith(
      cartId: null == cartId
          ? _value.cartId
          : cartId // ignore: cast_nullable_to_non_nullable
              as int,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as TotalPrice,
      itemsCount: null == itemsCount
          ? _value.itemsCount
          : itemsCount // ignore: cast_nullable_to_non_nullable
              as int,
      products: freezed == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<CartProduct>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TotalPriceCopyWith<$Res> get totalPrice {
    return $TotalPriceCopyWith<$Res>(_value.totalPrice, (value) {
      return _then(_value.copyWith(totalPrice: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CartCopyWith<$Res> implements $CartCopyWith<$Res> {
  factory _$$_CartCopyWith(_$_Cart value, $Res Function(_$_Cart) then) =
      __$$_CartCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id', required: true, nullable: false)
          int cartId,
      @JsonKey(required: true, nullable: false, name: 'total')
          TotalPrice totalPrice,
      @JsonKey(required: true, nullable: false, name: 'items')
          int itemsCount,
      @JsonKey(required: false, nullable: true)
          List<CartProduct>? products});

  @override
  $TotalPriceCopyWith<$Res> get totalPrice;
}

/// @nodoc
class __$$_CartCopyWithImpl<$Res> extends _$CartCopyWithImpl<$Res, _$_Cart>
    implements _$$_CartCopyWith<$Res> {
  __$$_CartCopyWithImpl(_$_Cart _value, $Res Function(_$_Cart) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartId = null,
    Object? totalPrice = null,
    Object? itemsCount = null,
    Object? products = freezed,
  }) {
    return _then(_$_Cart(
      cartId: null == cartId
          ? _value.cartId
          : cartId // ignore: cast_nullable_to_non_nullable
              as int,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as TotalPrice,
      itemsCount: null == itemsCount
          ? _value.itemsCount
          : itemsCount // ignore: cast_nullable_to_non_nullable
              as int,
      products: freezed == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<CartProduct>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Cart implements _Cart {
  _$_Cart(
      {@JsonKey(name: 'id', required: true, nullable: false)
          required this.cartId,
      @JsonKey(required: true, nullable: false, name: 'total')
          required this.totalPrice,
      @JsonKey(required: true, nullable: false, name: 'items')
          required this.itemsCount,
      @JsonKey(required: false, nullable: true)
          required final List<CartProduct>? products})
      : _products = products;

  factory _$_Cart.fromJson(Map<String, dynamic> json) => _$$_CartFromJson(json);

  @override
  @JsonKey(name: 'id', required: true, nullable: false)
  final int cartId;
  @override
  @JsonKey(required: true, nullable: false, name: 'total')
  final TotalPrice totalPrice;
  @override
  @JsonKey(required: true, nullable: false, name: 'items')
  final int itemsCount;
  final List<CartProduct>? _products;
  @override
  @JsonKey(required: false, nullable: true)
  List<CartProduct>? get products {
    final value = _products;
    if (value == null) return null;
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Cart(cartId: $cartId, totalPrice: $totalPrice, itemsCount: $itemsCount, products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Cart &&
            (identical(other.cartId, cartId) || other.cartId == cartId) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.itemsCount, itemsCount) ||
                other.itemsCount == itemsCount) &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, cartId, totalPrice, itemsCount,
      const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CartCopyWith<_$_Cart> get copyWith =>
      __$$_CartCopyWithImpl<_$_Cart>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CartToJson(
      this,
    );
  }
}

abstract class _Cart implements Cart {
  factory _Cart(
      {@JsonKey(name: 'id', required: true, nullable: false)
          required final int cartId,
      @JsonKey(required: true, nullable: false, name: 'total')
          required final TotalPrice totalPrice,
      @JsonKey(required: true, nullable: false, name: 'items')
          required final int itemsCount,
      @JsonKey(required: false, nullable: true)
          required final List<CartProduct>? products}) = _$_Cart;

  factory _Cart.fromJson(Map<String, dynamic> json) = _$_Cart.fromJson;

  @override
  @JsonKey(name: 'id', required: true, nullable: false)
  int get cartId;
  @override
  @JsonKey(required: true, nullable: false, name: 'total')
  TotalPrice get totalPrice;
  @override
  @JsonKey(required: true, nullable: false, name: 'items')
  int get itemsCount;
  @override
  @JsonKey(required: false, nullable: true)
  List<CartProduct>? get products;
  @override
  @JsonKey(ignore: true)
  _$$_CartCopyWith<_$_Cart> get copyWith => throw _privateConstructorUsedError;
}

TotalPrice _$TotalPriceFromJson(Map<String, dynamic> json) {
  return _TotalPrice.fromJson(json);
}

/// @nodoc
mixin _$TotalPrice {
  @JsonKey(required: true, nullable: false, fromJson: _valueFromJson)
  double get value => throw _privateConstructorUsedError;
  @JsonKey(required: true, nullable: false)
  String get currency => throw _privateConstructorUsedError;
  @JsonKey(required: true, nullable: false)
  String get formatted => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TotalPriceCopyWith<TotalPrice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TotalPriceCopyWith<$Res> {
  factory $TotalPriceCopyWith(
          TotalPrice value, $Res Function(TotalPrice) then) =
      _$TotalPriceCopyWithImpl<$Res, TotalPrice>;
  @useResult
  $Res call(
      {@JsonKey(required: true, nullable: false, fromJson: _valueFromJson)
          double value,
      @JsonKey(required: true, nullable: false)
          String currency,
      @JsonKey(required: true, nullable: false)
          String formatted});
}

/// @nodoc
class _$TotalPriceCopyWithImpl<$Res, $Val extends TotalPrice>
    implements $TotalPriceCopyWith<$Res> {
  _$TotalPriceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? currency = null,
    Object? formatted = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      formatted: null == formatted
          ? _value.formatted
          : formatted // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TotalPriceCopyWith<$Res>
    implements $TotalPriceCopyWith<$Res> {
  factory _$$_TotalPriceCopyWith(
          _$_TotalPrice value, $Res Function(_$_TotalPrice) then) =
      __$$_TotalPriceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(required: true, nullable: false, fromJson: _valueFromJson)
          double value,
      @JsonKey(required: true, nullable: false)
          String currency,
      @JsonKey(required: true, nullable: false)
          String formatted});
}

/// @nodoc
class __$$_TotalPriceCopyWithImpl<$Res>
    extends _$TotalPriceCopyWithImpl<$Res, _$_TotalPrice>
    implements _$$_TotalPriceCopyWith<$Res> {
  __$$_TotalPriceCopyWithImpl(
      _$_TotalPrice _value, $Res Function(_$_TotalPrice) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? currency = null,
    Object? formatted = null,
  }) {
    return _then(_$_TotalPrice(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      formatted: null == formatted
          ? _value.formatted
          : formatted // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TotalPrice implements _TotalPrice {
  _$_TotalPrice(
      {@JsonKey(required: true, nullable: false, fromJson: _valueFromJson)
          required this.value,
      @JsonKey(required: true, nullable: false)
          required this.currency,
      @JsonKey(required: true, nullable: false)
          required this.formatted});

  factory _$_TotalPrice.fromJson(Map<String, dynamic> json) =>
      _$$_TotalPriceFromJson(json);

  @override
  @JsonKey(required: true, nullable: false, fromJson: _valueFromJson)
  final double value;
  @override
  @JsonKey(required: true, nullable: false)
  final String currency;
  @override
  @JsonKey(required: true, nullable: false)
  final String formatted;

  @override
  String toString() {
    return 'TotalPrice(value: $value, currency: $currency, formatted: $formatted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TotalPrice &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.formatted, formatted) ||
                other.formatted == formatted));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value, currency, formatted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TotalPriceCopyWith<_$_TotalPrice> get copyWith =>
      __$$_TotalPriceCopyWithImpl<_$_TotalPrice>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TotalPriceToJson(
      this,
    );
  }
}

abstract class _TotalPrice implements TotalPrice {
  factory _TotalPrice(
      {@JsonKey(required: true, nullable: false, fromJson: _valueFromJson)
          required final double value,
      @JsonKey(required: true, nullable: false)
          required final String currency,
      @JsonKey(required: true, nullable: false)
          required final String formatted}) = _$_TotalPrice;

  factory _TotalPrice.fromJson(Map<String, dynamic> json) =
      _$_TotalPrice.fromJson;

  @override
  @JsonKey(required: true, nullable: false, fromJson: _valueFromJson)
  double get value;
  @override
  @JsonKey(required: true, nullable: false)
  String get currency;
  @override
  @JsonKey(required: true, nullable: false)
  String get formatted;
  @override
  @JsonKey(ignore: true)
  _$$_TotalPriceCopyWith<_$_TotalPrice> get copyWith =>
      throw _privateConstructorUsedError;
}

CartProduct _$CartProductFromJson(Map<String, dynamic> json) {
  return _CartProduct.fromJson(json);
}

/// @nodoc
mixin _$CartProduct {
  @JsonKey(name: 'id', required: true, nullable: false)
  int get cartProductId => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_id', required: true, nullable: false)
  int get productId => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_quantity', required: true, nullable: false)
  int get totalQuantity => throw _privateConstructorUsedError;
  @JsonKey(name: 'total', required: true, nullable: false)
  TotalPrice get totalPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'unit_price', required: true, nullable: false)
  TotalPrice get unitPrice => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartProductCopyWith<CartProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartProductCopyWith<$Res> {
  factory $CartProductCopyWith(
          CartProduct value, $Res Function(CartProduct) then) =
      _$CartProductCopyWithImpl<$Res, CartProduct>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id', required: true, nullable: false)
          int cartProductId,
      @JsonKey(name: 'product_id', required: true, nullable: false)
          int productId,
      @JsonKey(name: 'total_quantity', required: true, nullable: false)
          int totalQuantity,
      @JsonKey(name: 'total', required: true, nullable: false)
          TotalPrice totalPrice,
      @JsonKey(name: 'unit_price', required: true, nullable: false)
          TotalPrice unitPrice});

  $TotalPriceCopyWith<$Res> get totalPrice;
  $TotalPriceCopyWith<$Res> get unitPrice;
}

/// @nodoc
class _$CartProductCopyWithImpl<$Res, $Val extends CartProduct>
    implements $CartProductCopyWith<$Res> {
  _$CartProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartProductId = null,
    Object? productId = null,
    Object? totalQuantity = null,
    Object? totalPrice = null,
    Object? unitPrice = null,
  }) {
    return _then(_value.copyWith(
      cartProductId: null == cartProductId
          ? _value.cartProductId
          : cartProductId // ignore: cast_nullable_to_non_nullable
              as int,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      totalQuantity: null == totalQuantity
          ? _value.totalQuantity
          : totalQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as TotalPrice,
      unitPrice: null == unitPrice
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as TotalPrice,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TotalPriceCopyWith<$Res> get totalPrice {
    return $TotalPriceCopyWith<$Res>(_value.totalPrice, (value) {
      return _then(_value.copyWith(totalPrice: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TotalPriceCopyWith<$Res> get unitPrice {
    return $TotalPriceCopyWith<$Res>(_value.unitPrice, (value) {
      return _then(_value.copyWith(unitPrice: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CartProductCopyWith<$Res>
    implements $CartProductCopyWith<$Res> {
  factory _$$_CartProductCopyWith(
          _$_CartProduct value, $Res Function(_$_CartProduct) then) =
      __$$_CartProductCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id', required: true, nullable: false)
          int cartProductId,
      @JsonKey(name: 'product_id', required: true, nullable: false)
          int productId,
      @JsonKey(name: 'total_quantity', required: true, nullable: false)
          int totalQuantity,
      @JsonKey(name: 'total', required: true, nullable: false)
          TotalPrice totalPrice,
      @JsonKey(name: 'unit_price', required: true, nullable: false)
          TotalPrice unitPrice});

  @override
  $TotalPriceCopyWith<$Res> get totalPrice;
  @override
  $TotalPriceCopyWith<$Res> get unitPrice;
}

/// @nodoc
class __$$_CartProductCopyWithImpl<$Res>
    extends _$CartProductCopyWithImpl<$Res, _$_CartProduct>
    implements _$$_CartProductCopyWith<$Res> {
  __$$_CartProductCopyWithImpl(
      _$_CartProduct _value, $Res Function(_$_CartProduct) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartProductId = null,
    Object? productId = null,
    Object? totalQuantity = null,
    Object? totalPrice = null,
    Object? unitPrice = null,
  }) {
    return _then(_$_CartProduct(
      cartProductId: null == cartProductId
          ? _value.cartProductId
          : cartProductId // ignore: cast_nullable_to_non_nullable
              as int,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      totalQuantity: null == totalQuantity
          ? _value.totalQuantity
          : totalQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as TotalPrice,
      unitPrice: null == unitPrice
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as TotalPrice,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CartProduct implements _CartProduct {
  _$_CartProduct(
      {@JsonKey(name: 'id', required: true, nullable: false)
          required this.cartProductId,
      @JsonKey(name: 'product_id', required: true, nullable: false)
          required this.productId,
      @JsonKey(name: 'total_quantity', required: true, nullable: false)
          required this.totalQuantity,
      @JsonKey(name: 'total', required: true, nullable: false)
          required this.totalPrice,
      @JsonKey(name: 'unit_price', required: true, nullable: false)
          required this.unitPrice});

  factory _$_CartProduct.fromJson(Map<String, dynamic> json) =>
      _$$_CartProductFromJson(json);

  @override
  @JsonKey(name: 'id', required: true, nullable: false)
  final int cartProductId;
  @override
  @JsonKey(name: 'product_id', required: true, nullable: false)
  final int productId;
  @override
  @JsonKey(name: 'total_quantity', required: true, nullable: false)
  final int totalQuantity;
  @override
  @JsonKey(name: 'total', required: true, nullable: false)
  final TotalPrice totalPrice;
  @override
  @JsonKey(name: 'unit_price', required: true, nullable: false)
  final TotalPrice unitPrice;

  @override
  String toString() {
    return 'CartProduct(cartProductId: $cartProductId, productId: $productId, totalQuantity: $totalQuantity, totalPrice: $totalPrice, unitPrice: $unitPrice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartProduct &&
            (identical(other.cartProductId, cartProductId) ||
                other.cartProductId == cartProductId) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.totalQuantity, totalQuantity) ||
                other.totalQuantity == totalQuantity) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.unitPrice, unitPrice) ||
                other.unitPrice == unitPrice));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, cartProductId, productId,
      totalQuantity, totalPrice, unitPrice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CartProductCopyWith<_$_CartProduct> get copyWith =>
      __$$_CartProductCopyWithImpl<_$_CartProduct>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CartProductToJson(
      this,
    );
  }
}

abstract class _CartProduct implements CartProduct {
  factory _CartProduct(
      {@JsonKey(name: 'id', required: true, nullable: false)
          required final int cartProductId,
      @JsonKey(name: 'product_id', required: true, nullable: false)
          required final int productId,
      @JsonKey(name: 'total_quantity', required: true, nullable: false)
          required final int totalQuantity,
      @JsonKey(name: 'total', required: true, nullable: false)
          required final TotalPrice totalPrice,
      @JsonKey(name: 'unit_price', required: true, nullable: false)
          required final TotalPrice unitPrice}) = _$_CartProduct;

  factory _CartProduct.fromJson(Map<String, dynamic> json) =
      _$_CartProduct.fromJson;

  @override
  @JsonKey(name: 'id', required: true, nullable: false)
  int get cartProductId;
  @override
  @JsonKey(name: 'product_id', required: true, nullable: false)
  int get productId;
  @override
  @JsonKey(name: 'total_quantity', required: true, nullable: false)
  int get totalQuantity;
  @override
  @JsonKey(name: 'total', required: true, nullable: false)
  TotalPrice get totalPrice;
  @override
  @JsonKey(name: 'unit_price', required: true, nullable: false)
  TotalPrice get unitPrice;
  @override
  @JsonKey(ignore: true)
  _$$_CartProductCopyWith<_$_CartProduct> get copyWith =>
      throw _privateConstructorUsedError;
}
