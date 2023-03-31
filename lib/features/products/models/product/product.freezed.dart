// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Product _$ProductFromJson(Map<String, dynamic> json) {
  return _Product.fromJson(json);
}

/// @nodoc
mixin _$Product {
  @JsonKey(name: 'id', required: true, nullable: false)
  int get productId => throw _privateConstructorUsedError;
  @JsonKey(required: true, nullable: false)
  String get title => throw _privateConstructorUsedError;
  @JsonKey(required: true, nullable: false)
  String get description => throw _privateConstructorUsedError;
  @JsonKey(required: true, nullable: false)
  Price get price => throw _privateConstructorUsedError;
  @JsonKey(required: true, nullable: false)
  Image get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res, Product>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id', required: true, nullable: false) int productId,
      @JsonKey(required: true, nullable: false) String title,
      @JsonKey(required: true, nullable: false) String description,
      @JsonKey(required: true, nullable: false) Price price,
      @JsonKey(required: true, nullable: false) Image image});

  $PriceCopyWith<$Res> get price;
  $ImageCopyWith<$Res> get image;
}

/// @nodoc
class _$ProductCopyWithImpl<$Res, $Val extends Product>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? title = null,
    Object? description = null,
    Object? price = null,
    Object? image = null,
  }) {
    return _then(_value.copyWith(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Price,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as Image,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PriceCopyWith<$Res> get price {
    return $PriceCopyWith<$Res>(_value.price, (value) {
      return _then(_value.copyWith(price: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ImageCopyWith<$Res> get image {
    return $ImageCopyWith<$Res>(_value.image, (value) {
      return _then(_value.copyWith(image: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ProductCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$_ProductCopyWith(
          _$_Product value, $Res Function(_$_Product) then) =
      __$$_ProductCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id', required: true, nullable: false) int productId,
      @JsonKey(required: true, nullable: false) String title,
      @JsonKey(required: true, nullable: false) String description,
      @JsonKey(required: true, nullable: false) Price price,
      @JsonKey(required: true, nullable: false) Image image});

  @override
  $PriceCopyWith<$Res> get price;
  @override
  $ImageCopyWith<$Res> get image;
}

/// @nodoc
class __$$_ProductCopyWithImpl<$Res>
    extends _$ProductCopyWithImpl<$Res, _$_Product>
    implements _$$_ProductCopyWith<$Res> {
  __$$_ProductCopyWithImpl(_$_Product _value, $Res Function(_$_Product) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? title = null,
    Object? description = null,
    Object? price = null,
    Object? image = null,
  }) {
    return _then(_$_Product(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Price,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as Image,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Product implements _Product {
  _$_Product(
      {@JsonKey(name: 'id', required: true, nullable: false)
          required this.productId,
      @JsonKey(required: true, nullable: false)
          required this.title,
      @JsonKey(required: true, nullable: false)
          required this.description,
      @JsonKey(required: true, nullable: false)
          required this.price,
      @JsonKey(required: true, nullable: false)
          required this.image});

  factory _$_Product.fromJson(Map<String, dynamic> json) =>
      _$$_ProductFromJson(json);

  @override
  @JsonKey(name: 'id', required: true, nullable: false)
  final int productId;
  @override
  @JsonKey(required: true, nullable: false)
  final String title;
  @override
  @JsonKey(required: true, nullable: false)
  final String description;
  @override
  @JsonKey(required: true, nullable: false)
  final Price price;
  @override
  @JsonKey(required: true, nullable: false)
  final Image image;

  @override
  String toString() {
    return 'Product(productId: $productId, title: $title, description: $description, price: $price, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Product &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, productId, title, description, price, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductCopyWith<_$_Product> get copyWith =>
      __$$_ProductCopyWithImpl<_$_Product>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductToJson(
      this,
    );
  }
}

abstract class _Product implements Product {
  factory _Product(
      {@JsonKey(name: 'id', required: true, nullable: false)
          required final int productId,
      @JsonKey(required: true, nullable: false)
          required final String title,
      @JsonKey(required: true, nullable: false)
          required final String description,
      @JsonKey(required: true, nullable: false)
          required final Price price,
      @JsonKey(required: true, nullable: false)
          required final Image image}) = _$_Product;

  factory _Product.fromJson(Map<String, dynamic> json) = _$_Product.fromJson;

  @override
  @JsonKey(name: 'id', required: true, nullable: false)
  int get productId;
  @override
  @JsonKey(required: true, nullable: false)
  String get title;
  @override
  @JsonKey(required: true, nullable: false)
  String get description;
  @override
  @JsonKey(required: true, nullable: false)
  Price get price;
  @override
  @JsonKey(required: true, nullable: false)
  Image get image;
  @override
  @JsonKey(ignore: true)
  _$$_ProductCopyWith<_$_Product> get copyWith =>
      throw _privateConstructorUsedError;
}

Price _$PriceFromJson(Map<String, dynamic> json) {
  return _Price.fromJson(json);
}

/// @nodoc
mixin _$Price {
  @JsonKey(required: true, nullable: false, fromJson: _valueFromJson)
  double get value => throw _privateConstructorUsedError;
  @JsonKey(required: true, nullable: false)
  String get currency => throw _privateConstructorUsedError;
  @JsonKey(required: true, nullable: false)
  String get formatted => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PriceCopyWith<Price> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PriceCopyWith<$Res> {
  factory $PriceCopyWith(Price value, $Res Function(Price) then) =
      _$PriceCopyWithImpl<$Res, Price>;
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
class _$PriceCopyWithImpl<$Res, $Val extends Price>
    implements $PriceCopyWith<$Res> {
  _$PriceCopyWithImpl(this._value, this._then);

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
abstract class _$$_PriceCopyWith<$Res> implements $PriceCopyWith<$Res> {
  factory _$$_PriceCopyWith(_$_Price value, $Res Function(_$_Price) then) =
      __$$_PriceCopyWithImpl<$Res>;
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
class __$$_PriceCopyWithImpl<$Res> extends _$PriceCopyWithImpl<$Res, _$_Price>
    implements _$$_PriceCopyWith<$Res> {
  __$$_PriceCopyWithImpl(_$_Price _value, $Res Function(_$_Price) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? currency = null,
    Object? formatted = null,
  }) {
    return _then(_$_Price(
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
class _$_Price implements _Price {
  _$_Price(
      {@JsonKey(required: true, nullable: false, fromJson: _valueFromJson)
          required this.value,
      @JsonKey(required: true, nullable: false)
          required this.currency,
      @JsonKey(required: true, nullable: false)
          required this.formatted});

  factory _$_Price.fromJson(Map<String, dynamic> json) =>
      _$$_PriceFromJson(json);

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
    return 'Price(value: $value, currency: $currency, formatted: $formatted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Price &&
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
  _$$_PriceCopyWith<_$_Price> get copyWith =>
      __$$_PriceCopyWithImpl<_$_Price>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PriceToJson(
      this,
    );
  }
}

abstract class _Price implements Price {
  factory _Price(
      {@JsonKey(required: true, nullable: false, fromJson: _valueFromJson)
          required final double value,
      @JsonKey(required: true, nullable: false)
          required final String currency,
      @JsonKey(required: true, nullable: false)
          required final String formatted}) = _$_Price;

  factory _Price.fromJson(Map<String, dynamic> json) = _$_Price.fromJson;

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
  _$$_PriceCopyWith<_$_Price> get copyWith =>
      throw _privateConstructorUsedError;
}

Image _$ImageFromJson(Map<String, dynamic> json) {
  return _Image.fromJson(json);
}

/// @nodoc
mixin _$Image {
  @JsonKey(name: 'id', required: true, nullable: false)
  int get imageId => throw _privateConstructorUsedError;
  @JsonKey(required: true, nullable: false, name: 'file_name')
  String get fileName => throw _privateConstructorUsedError;
  @JsonKey(required: true, nullable: false, name: 'conversions')
  ImageConversions get imageConversions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageCopyWith<Image> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageCopyWith<$Res> {
  factory $ImageCopyWith(Image value, $Res Function(Image) then) =
      _$ImageCopyWithImpl<$Res, Image>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id', required: true, nullable: false)
          int imageId,
      @JsonKey(required: true, nullable: false, name: 'file_name')
          String fileName,
      @JsonKey(required: true, nullable: false, name: 'conversions')
          ImageConversions imageConversions});

  $ImageConversionsCopyWith<$Res> get imageConversions;
}

/// @nodoc
class _$ImageCopyWithImpl<$Res, $Val extends Image>
    implements $ImageCopyWith<$Res> {
  _$ImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageId = null,
    Object? fileName = null,
    Object? imageConversions = null,
  }) {
    return _then(_value.copyWith(
      imageId: null == imageId
          ? _value.imageId
          : imageId // ignore: cast_nullable_to_non_nullable
              as int,
      fileName: null == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      imageConversions: null == imageConversions
          ? _value.imageConversions
          : imageConversions // ignore: cast_nullable_to_non_nullable
              as ImageConversions,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ImageConversionsCopyWith<$Res> get imageConversions {
    return $ImageConversionsCopyWith<$Res>(_value.imageConversions, (value) {
      return _then(_value.copyWith(imageConversions: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ImageCopyWith<$Res> implements $ImageCopyWith<$Res> {
  factory _$$_ImageCopyWith(_$_Image value, $Res Function(_$_Image) then) =
      __$$_ImageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id', required: true, nullable: false)
          int imageId,
      @JsonKey(required: true, nullable: false, name: 'file_name')
          String fileName,
      @JsonKey(required: true, nullable: false, name: 'conversions')
          ImageConversions imageConversions});

  @override
  $ImageConversionsCopyWith<$Res> get imageConversions;
}

/// @nodoc
class __$$_ImageCopyWithImpl<$Res> extends _$ImageCopyWithImpl<$Res, _$_Image>
    implements _$$_ImageCopyWith<$Res> {
  __$$_ImageCopyWithImpl(_$_Image _value, $Res Function(_$_Image) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageId = null,
    Object? fileName = null,
    Object? imageConversions = null,
  }) {
    return _then(_$_Image(
      imageId: null == imageId
          ? _value.imageId
          : imageId // ignore: cast_nullable_to_non_nullable
              as int,
      fileName: null == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      imageConversions: null == imageConversions
          ? _value.imageConversions
          : imageConversions // ignore: cast_nullable_to_non_nullable
              as ImageConversions,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Image implements _Image {
  _$_Image(
      {@JsonKey(name: 'id', required: true, nullable: false)
          required this.imageId,
      @JsonKey(required: true, nullable: false, name: 'file_name')
          required this.fileName,
      @JsonKey(required: true, nullable: false, name: 'conversions')
          required this.imageConversions});

  factory _$_Image.fromJson(Map<String, dynamic> json) =>
      _$$_ImageFromJson(json);

  @override
  @JsonKey(name: 'id', required: true, nullable: false)
  final int imageId;
  @override
  @JsonKey(required: true, nullable: false, name: 'file_name')
  final String fileName;
  @override
  @JsonKey(required: true, nullable: false, name: 'conversions')
  final ImageConversions imageConversions;

  @override
  String toString() {
    return 'Image(imageId: $imageId, fileName: $fileName, imageConversions: $imageConversions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Image &&
            (identical(other.imageId, imageId) || other.imageId == imageId) &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName) &&
            (identical(other.imageConversions, imageConversions) ||
                other.imageConversions == imageConversions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, imageId, fileName, imageConversions);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ImageCopyWith<_$_Image> get copyWith =>
      __$$_ImageCopyWithImpl<_$_Image>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ImageToJson(
      this,
    );
  }
}

abstract class _Image implements Image {
  factory _Image(
      {@JsonKey(name: 'id', required: true, nullable: false)
          required final int imageId,
      @JsonKey(required: true, nullable: false, name: 'file_name')
          required final String fileName,
      @JsonKey(required: true, nullable: false, name: 'conversions')
          required final ImageConversions imageConversions}) = _$_Image;

  factory _Image.fromJson(Map<String, dynamic> json) = _$_Image.fromJson;

  @override
  @JsonKey(name: 'id', required: true, nullable: false)
  int get imageId;
  @override
  @JsonKey(required: true, nullable: false, name: 'file_name')
  String get fileName;
  @override
  @JsonKey(required: true, nullable: false, name: 'conversions')
  ImageConversions get imageConversions;
  @override
  @JsonKey(ignore: true)
  _$$_ImageCopyWith<_$_Image> get copyWith =>
      throw _privateConstructorUsedError;
}

ImageConversions _$ImageConversionsFromJson(Map<String, dynamic> json) {
  return _ImageConversions.fromJson(json);
}

/// @nodoc
mixin _$ImageConversions {
  @JsonKey(required: false, nullable: true)
  String? get small => throw _privateConstructorUsedError;
  @JsonKey(required: false, nullable: true)
  String? get medium => throw _privateConstructorUsedError;
  @JsonKey(required: false, nullable: true)
  String? get large => throw _privateConstructorUsedError;
  @JsonKey(required: true, nullable: false, name: 'default')
  String get defaultRes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageConversionsCopyWith<ImageConversions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageConversionsCopyWith<$Res> {
  factory $ImageConversionsCopyWith(
          ImageConversions value, $Res Function(ImageConversions) then) =
      _$ImageConversionsCopyWithImpl<$Res, ImageConversions>;
  @useResult
  $Res call(
      {@JsonKey(required: false, nullable: true)
          String? small,
      @JsonKey(required: false, nullable: true)
          String? medium,
      @JsonKey(required: false, nullable: true)
          String? large,
      @JsonKey(required: true, nullable: false, name: 'default')
          String defaultRes});
}

/// @nodoc
class _$ImageConversionsCopyWithImpl<$Res, $Val extends ImageConversions>
    implements $ImageConversionsCopyWith<$Res> {
  _$ImageConversionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? small = freezed,
    Object? medium = freezed,
    Object? large = freezed,
    Object? defaultRes = null,
  }) {
    return _then(_value.copyWith(
      small: freezed == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String?,
      medium: freezed == medium
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as String?,
      large: freezed == large
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as String?,
      defaultRes: null == defaultRes
          ? _value.defaultRes
          : defaultRes // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ImageConversionsCopyWith<$Res>
    implements $ImageConversionsCopyWith<$Res> {
  factory _$$_ImageConversionsCopyWith(
          _$_ImageConversions value, $Res Function(_$_ImageConversions) then) =
      __$$_ImageConversionsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(required: false, nullable: true)
          String? small,
      @JsonKey(required: false, nullable: true)
          String? medium,
      @JsonKey(required: false, nullable: true)
          String? large,
      @JsonKey(required: true, nullable: false, name: 'default')
          String defaultRes});
}

/// @nodoc
class __$$_ImageConversionsCopyWithImpl<$Res>
    extends _$ImageConversionsCopyWithImpl<$Res, _$_ImageConversions>
    implements _$$_ImageConversionsCopyWith<$Res> {
  __$$_ImageConversionsCopyWithImpl(
      _$_ImageConversions _value, $Res Function(_$_ImageConversions) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? small = freezed,
    Object? medium = freezed,
    Object? large = freezed,
    Object? defaultRes = null,
  }) {
    return _then(_$_ImageConversions(
      small: freezed == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String?,
      medium: freezed == medium
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as String?,
      large: freezed == large
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as String?,
      defaultRes: null == defaultRes
          ? _value.defaultRes
          : defaultRes // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ImageConversions extends _ImageConversions {
  _$_ImageConversions(
      {@JsonKey(required: false, nullable: true)
          this.small,
      @JsonKey(required: false, nullable: true)
          this.medium,
      @JsonKey(required: false, nullable: true)
          this.large,
      @JsonKey(required: true, nullable: false, name: 'default')
          required this.defaultRes})
      : super._();

  factory _$_ImageConversions.fromJson(Map<String, dynamic> json) =>
      _$$_ImageConversionsFromJson(json);

  @override
  @JsonKey(required: false, nullable: true)
  final String? small;
  @override
  @JsonKey(required: false, nullable: true)
  final String? medium;
  @override
  @JsonKey(required: false, nullable: true)
  final String? large;
  @override
  @JsonKey(required: true, nullable: false, name: 'default')
  final String defaultRes;

  @override
  String toString() {
    return 'ImageConversions(small: $small, medium: $medium, large: $large, defaultRes: $defaultRes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImageConversions &&
            (identical(other.small, small) || other.small == small) &&
            (identical(other.medium, medium) || other.medium == medium) &&
            (identical(other.large, large) || other.large == large) &&
            (identical(other.defaultRes, defaultRes) ||
                other.defaultRes == defaultRes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, small, medium, large, defaultRes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ImageConversionsCopyWith<_$_ImageConversions> get copyWith =>
      __$$_ImageConversionsCopyWithImpl<_$_ImageConversions>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ImageConversionsToJson(
      this,
    );
  }
}

abstract class _ImageConversions extends ImageConversions {
  factory _ImageConversions(
      {@JsonKey(required: false, nullable: true)
          final String? small,
      @JsonKey(required: false, nullable: true)
          final String? medium,
      @JsonKey(required: false, nullable: true)
          final String? large,
      @JsonKey(required: true, nullable: false, name: 'default')
          required final String defaultRes}) = _$_ImageConversions;
  _ImageConversions._() : super._();

  factory _ImageConversions.fromJson(Map<String, dynamic> json) =
      _$_ImageConversions.fromJson;

  @override
  @JsonKey(required: false, nullable: true)
  String? get small;
  @override
  @JsonKey(required: false, nullable: true)
  String? get medium;
  @override
  @JsonKey(required: false, nullable: true)
  String? get large;
  @override
  @JsonKey(required: true, nullable: false, name: 'default')
  String get defaultRes;
  @override
  @JsonKey(ignore: true)
  _$$_ImageConversionsCopyWith<_$_ImageConversions> get copyWith =>
      throw _privateConstructorUsedError;
}
