// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_result_holder.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductResultHolder _$$_ProductResultHolderFromJson(
    Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['data', 'links', 'meta'],
  );
  return _$_ProductResultHolder(
    products: (json['data'] as List<dynamic>)
        .map((e) => Product.fromJson(e as Map<String, dynamic>))
        .toList(),
    links: Links.fromJson(json['links'] as Map<String, dynamic>),
    metaData: MetaData.fromJson(json['meta'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$$_ProductResultHolderToJson(
        _$_ProductResultHolder instance) =>
    <String, dynamic>{
      'data': instance.products,
      'links': instance.links,
      'meta': instance.metaData,
    };

_$_Links _$$_LinksFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['first', 'last', 'prev', 'next'],
  );
  return _$_Links(
    first: json['first'] as String,
    last: json['last'] as String?,
    prev: json['prev'] as String?,
    next: json['next'] as String?,
  );
}

Map<String, dynamic> _$$_LinksToJson(_$_Links instance) => <String, dynamic>{
      'first': instance.first,
      'last': instance.last,
      'prev': instance.prev,
      'next': instance.next,
    };

_$_MetaData _$$_MetaDataFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const [
      'current_page',
      'last_page',
      'from',
      'to',
      'per_page',
      'total'
    ],
  );
  return _$_MetaData(
    currentPageNumber: json['current_page'] as int,
    lastPageNumber: json['last_page'] as int,
    from: json['from'] as int?,
    to: json['to'] as int?,
    perPageProductCount: _perPageProductCountFromJson(json['per_page']),
    totalProducts: json['total'] as int,
  );
}

Map<String, dynamic> _$$_MetaDataToJson(_$_MetaData instance) =>
    <String, dynamic>{
      'current_page': instance.currentPageNumber,
      'last_page': instance.lastPageNumber,
      'from': instance.from,
      'to': instance.to,
      'per_page': instance.perPageProductCount,
      'total': instance.totalProducts,
    };
