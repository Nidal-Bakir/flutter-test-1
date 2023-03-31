import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@freezed
class Product with _$Product {
  factory Product({
    @JsonKey(name: 'id', required: true, nullable: false)
        required int productId,
    @JsonKey(required: true, nullable: false) required String title,
    @JsonKey(required: true, nullable: false) required String description,
    @JsonKey(required: true, nullable: false) required Price price,
    @JsonKey(required: true, nullable: false) required Image image,
  }) = _Product;

  factory Product.fromJson(Map<String, Object?> json) =>
      _$ProductFromJson(json);
}

@freezed
class Price with _$Price {
  factory Price({
    @JsonKey(required: true, nullable: false, fromJson: _valueFromJson)
        required double value,
    @JsonKey(required: true, nullable: false) required String currency,
    @JsonKey(required: true, nullable: false) required String formatted,
  }) = _Price;

  factory Price.fromJson(Map<String, Object?> json) => _$PriceFromJson(json);
}

double _valueFromJson(dynamic value) {
  return double.parse(value);
}

@freezed
class Image with _$Image {
  factory Image({
    @JsonKey(name: 'id', required: true, nullable: false) required int imageId,
    @JsonKey(required: true, nullable: false, name: 'file_name')
        required String fileName,
    @JsonKey(required: true, nullable: false, name: 'conversions')
        required ImageConversions imageConversions,
  }) = _Image;

  factory Image.fromJson(Map<String, Object?> json) => _$ImageFromJson(json);
}

@freezed
class ImageConversions with _$ImageConversions {
  const ImageConversions._();

  factory ImageConversions({
    @JsonKey(required: false, nullable: true) String? small,
    @JsonKey(required: false, nullable: true) String? medium,
    @JsonKey(required: false, nullable: true) String? large,
    @JsonKey(required: true, nullable: false, name: 'default')
        required String defaultRes,
  }) = _ImageConversions;

  factory ImageConversions.fromJson(Map<String, Object?> json) =>
      _$ImageConversionsFromJson(json);

  String get smallRes {
    return small ?? defaultRes;
  }

  String get mediumRes {
    return medium ?? defaultRes;
  }

  String get largeRes {
    return large ?? defaultRes;
  }
}
