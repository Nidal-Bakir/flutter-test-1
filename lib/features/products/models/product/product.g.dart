// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Product _$$_ProductFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['id', 'title', 'description', 'price', 'image'],
  );
  return _$_Product(
    productId: json['id'] as int,
    title: json['title'] as String,
    description: json['description'] as String,
    price: Price.fromJson(json['price'] as Map<String, dynamic>),
    image: Image.fromJson(json['image'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$$_ProductToJson(_$_Product instance) =>
    <String, dynamic>{
      'id': instance.productId,
      'title': instance.title,
      'description': instance.description,
      'price': instance.price,
      'image': instance.image,
    };

_$_Price _$$_PriceFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['value', 'currency', 'formatted'],
  );
  return _$_Price(
    value: _valueFromJson(json['value']),
    currency: json['currency'] as String,
    formatted: json['formatted'] as String,
  );
}

Map<String, dynamic> _$$_PriceToJson(_$_Price instance) => <String, dynamic>{
      'value': instance.value,
      'currency': instance.currency,
      'formatted': instance.formatted,
    };

_$_Image _$$_ImageFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['id', 'file_name', 'conversions'],
  );
  return _$_Image(
    imageId: json['id'] as int,
    fileName: json['file_name'] as String,
    imageConversions:
        ImageConversions.fromJson(json['conversions'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$$_ImageToJson(_$_Image instance) => <String, dynamic>{
      'id': instance.imageId,
      'file_name': instance.fileName,
      'conversions': instance.imageConversions,
    };

_$_ImageConversions _$$_ImageConversionsFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['default'],
  );
  return _$_ImageConversions(
    small: json['small'] as String?,
    medium: json['medium'] as String?,
    large: json['large'] as String?,
    defaultRes: json['default'] as String,
  );
}

Map<String, dynamic> _$$_ImageConversionsToJson(_$_ImageConversions instance) =>
    <String, dynamic>{
      'small': instance.small,
      'medium': instance.medium,
      'large': instance.large,
      'default': instance.defaultRes,
    };
