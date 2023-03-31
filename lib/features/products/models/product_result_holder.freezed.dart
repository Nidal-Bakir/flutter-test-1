// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_result_holder.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductResultHolder _$ProductResultHolderFromJson(Map<String, dynamic> json) {
  return _ProductResultHolder.fromJson(json);
}

/// @nodoc
mixin _$ProductResultHolder {
  @JsonKey(required: true, nullable: false, name: 'data')
  List<Product> get products => throw _privateConstructorUsedError;
  @JsonKey(required: true, nullable: false)
  Links get links => throw _privateConstructorUsedError;
  @JsonKey(required: true, nullable: false, name: 'meta')
  MetaData get metaData => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductResultHolderCopyWith<ProductResultHolder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductResultHolderCopyWith<$Res> {
  factory $ProductResultHolderCopyWith(
          ProductResultHolder value, $Res Function(ProductResultHolder) then) =
      _$ProductResultHolderCopyWithImpl<$Res, ProductResultHolder>;
  @useResult
  $Res call(
      {@JsonKey(required: true, nullable: false, name: 'data')
          List<Product> products,
      @JsonKey(required: true, nullable: false)
          Links links,
      @JsonKey(required: true, nullable: false, name: 'meta')
          MetaData metaData});

  $LinksCopyWith<$Res> get links;
  $MetaDataCopyWith<$Res> get metaData;
}

/// @nodoc
class _$ProductResultHolderCopyWithImpl<$Res, $Val extends ProductResultHolder>
    implements $ProductResultHolderCopyWith<$Res> {
  _$ProductResultHolderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? links = null,
    Object? metaData = null,
  }) {
    return _then(_value.copyWith(
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      links: null == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as Links,
      metaData: null == metaData
          ? _value.metaData
          : metaData // ignore: cast_nullable_to_non_nullable
              as MetaData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LinksCopyWith<$Res> get links {
    return $LinksCopyWith<$Res>(_value.links, (value) {
      return _then(_value.copyWith(links: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MetaDataCopyWith<$Res> get metaData {
    return $MetaDataCopyWith<$Res>(_value.metaData, (value) {
      return _then(_value.copyWith(metaData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ProductResultHolderCopyWith<$Res>
    implements $ProductResultHolderCopyWith<$Res> {
  factory _$$_ProductResultHolderCopyWith(_$_ProductResultHolder value,
          $Res Function(_$_ProductResultHolder) then) =
      __$$_ProductResultHolderCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(required: true, nullable: false, name: 'data')
          List<Product> products,
      @JsonKey(required: true, nullable: false)
          Links links,
      @JsonKey(required: true, nullable: false, name: 'meta')
          MetaData metaData});

  @override
  $LinksCopyWith<$Res> get links;
  @override
  $MetaDataCopyWith<$Res> get metaData;
}

/// @nodoc
class __$$_ProductResultHolderCopyWithImpl<$Res>
    extends _$ProductResultHolderCopyWithImpl<$Res, _$_ProductResultHolder>
    implements _$$_ProductResultHolderCopyWith<$Res> {
  __$$_ProductResultHolderCopyWithImpl(_$_ProductResultHolder _value,
      $Res Function(_$_ProductResultHolder) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? links = null,
    Object? metaData = null,
  }) {
    return _then(_$_ProductResultHolder(
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      links: null == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as Links,
      metaData: null == metaData
          ? _value.metaData
          : metaData // ignore: cast_nullable_to_non_nullable
              as MetaData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductResultHolder implements _ProductResultHolder {
  _$_ProductResultHolder(
      {@JsonKey(required: true, nullable: false, name: 'data')
          required final List<Product> products,
      @JsonKey(required: true, nullable: false)
          required this.links,
      @JsonKey(required: true, nullable: false, name: 'meta')
          required this.metaData})
      : _products = products;

  factory _$_ProductResultHolder.fromJson(Map<String, dynamic> json) =>
      _$$_ProductResultHolderFromJson(json);

  final List<Product> _products;
  @override
  @JsonKey(required: true, nullable: false, name: 'data')
  List<Product> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  @JsonKey(required: true, nullable: false)
  final Links links;
  @override
  @JsonKey(required: true, nullable: false, name: 'meta')
  final MetaData metaData;

  @override
  String toString() {
    return 'ProductResultHolder(products: $products, links: $links, metaData: $metaData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductResultHolder &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.links, links) || other.links == links) &&
            (identical(other.metaData, metaData) ||
                other.metaData == metaData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_products), links, metaData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductResultHolderCopyWith<_$_ProductResultHolder> get copyWith =>
      __$$_ProductResultHolderCopyWithImpl<_$_ProductResultHolder>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductResultHolderToJson(
      this,
    );
  }
}

abstract class _ProductResultHolder implements ProductResultHolder {
  factory _ProductResultHolder(
      {@JsonKey(required: true, nullable: false, name: 'data')
          required final List<Product> products,
      @JsonKey(required: true, nullable: false)
          required final Links links,
      @JsonKey(required: true, nullable: false, name: 'meta')
          required final MetaData metaData}) = _$_ProductResultHolder;

  factory _ProductResultHolder.fromJson(Map<String, dynamic> json) =
      _$_ProductResultHolder.fromJson;

  @override
  @JsonKey(required: true, nullable: false, name: 'data')
  List<Product> get products;
  @override
  @JsonKey(required: true, nullable: false)
  Links get links;
  @override
  @JsonKey(required: true, nullable: false, name: 'meta')
  MetaData get metaData;
  @override
  @JsonKey(ignore: true)
  _$$_ProductResultHolderCopyWith<_$_ProductResultHolder> get copyWith =>
      throw _privateConstructorUsedError;
}

Links _$LinksFromJson(Map<String, dynamic> json) {
  return _Links.fromJson(json);
}

/// @nodoc
mixin _$Links {
  @JsonKey(required: true, nullable: false)
  String get first => throw _privateConstructorUsedError;
  @JsonKey(required: true, nullable: true)
  String? get last => throw _privateConstructorUsedError;
  @JsonKey(required: true, nullable: true)
  String? get prev => throw _privateConstructorUsedError;
  @JsonKey(required: true, nullable: true)
  String? get next => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LinksCopyWith<Links> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinksCopyWith<$Res> {
  factory $LinksCopyWith(Links value, $Res Function(Links) then) =
      _$LinksCopyWithImpl<$Res, Links>;
  @useResult
  $Res call(
      {@JsonKey(required: true, nullable: false) String first,
      @JsonKey(required: true, nullable: true) String? last,
      @JsonKey(required: true, nullable: true) String? prev,
      @JsonKey(required: true, nullable: true) String? next});
}

/// @nodoc
class _$LinksCopyWithImpl<$Res, $Val extends Links>
    implements $LinksCopyWith<$Res> {
  _$LinksCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? first = null,
    Object? last = freezed,
    Object? prev = freezed,
    Object? next = freezed,
  }) {
    return _then(_value.copyWith(
      first: null == first
          ? _value.first
          : first // ignore: cast_nullable_to_non_nullable
              as String,
      last: freezed == last
          ? _value.last
          : last // ignore: cast_nullable_to_non_nullable
              as String?,
      prev: freezed == prev
          ? _value.prev
          : prev // ignore: cast_nullable_to_non_nullable
              as String?,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LinksCopyWith<$Res> implements $LinksCopyWith<$Res> {
  factory _$$_LinksCopyWith(_$_Links value, $Res Function(_$_Links) then) =
      __$$_LinksCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(required: true, nullable: false) String first,
      @JsonKey(required: true, nullable: true) String? last,
      @JsonKey(required: true, nullable: true) String? prev,
      @JsonKey(required: true, nullable: true) String? next});
}

/// @nodoc
class __$$_LinksCopyWithImpl<$Res> extends _$LinksCopyWithImpl<$Res, _$_Links>
    implements _$$_LinksCopyWith<$Res> {
  __$$_LinksCopyWithImpl(_$_Links _value, $Res Function(_$_Links) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? first = null,
    Object? last = freezed,
    Object? prev = freezed,
    Object? next = freezed,
  }) {
    return _then(_$_Links(
      first: null == first
          ? _value.first
          : first // ignore: cast_nullable_to_non_nullable
              as String,
      last: freezed == last
          ? _value.last
          : last // ignore: cast_nullable_to_non_nullable
              as String?,
      prev: freezed == prev
          ? _value.prev
          : prev // ignore: cast_nullable_to_non_nullable
              as String?,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Links implements _Links {
  _$_Links(
      {@JsonKey(required: true, nullable: false) required this.first,
      @JsonKey(required: true, nullable: true) required this.last,
      @JsonKey(required: true, nullable: true) required this.prev,
      @JsonKey(required: true, nullable: true) required this.next});

  factory _$_Links.fromJson(Map<String, dynamic> json) =>
      _$$_LinksFromJson(json);

  @override
  @JsonKey(required: true, nullable: false)
  final String first;
  @override
  @JsonKey(required: true, nullable: true)
  final String? last;
  @override
  @JsonKey(required: true, nullable: true)
  final String? prev;
  @override
  @JsonKey(required: true, nullable: true)
  final String? next;

  @override
  String toString() {
    return 'Links(first: $first, last: $last, prev: $prev, next: $next)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Links &&
            (identical(other.first, first) || other.first == first) &&
            (identical(other.last, last) || other.last == last) &&
            (identical(other.prev, prev) || other.prev == prev) &&
            (identical(other.next, next) || other.next == next));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, first, last, prev, next);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LinksCopyWith<_$_Links> get copyWith =>
      __$$_LinksCopyWithImpl<_$_Links>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LinksToJson(
      this,
    );
  }
}

abstract class _Links implements Links {
  factory _Links(
      {@JsonKey(required: true, nullable: false)
          required final String first,
      @JsonKey(required: true, nullable: true)
          required final String? last,
      @JsonKey(required: true, nullable: true)
          required final String? prev,
      @JsonKey(required: true, nullable: true)
          required final String? next}) = _$_Links;

  factory _Links.fromJson(Map<String, dynamic> json) = _$_Links.fromJson;

  @override
  @JsonKey(required: true, nullable: false)
  String get first;
  @override
  @JsonKey(required: true, nullable: true)
  String? get last;
  @override
  @JsonKey(required: true, nullable: true)
  String? get prev;
  @override
  @JsonKey(required: true, nullable: true)
  String? get next;
  @override
  @JsonKey(ignore: true)
  _$$_LinksCopyWith<_$_Links> get copyWith =>
      throw _privateConstructorUsedError;
}

MetaData _$MetaDataFromJson(Map<String, dynamic> json) {
  return _MetaData.fromJson(json);
}

/// @nodoc
mixin _$MetaData {
  @JsonKey(required: true, nullable: false, name: 'current_page')
  int get currentPageNumber => throw _privateConstructorUsedError;
  @JsonKey(required: true, nullable: false, name: 'last_page')
  int get lastPageNumber => throw _privateConstructorUsedError;
  @JsonKey(required: true, nullable: true)
  int? get from => throw _privateConstructorUsedError;
  @JsonKey(required: true, nullable: true)
  int? get to => throw _privateConstructorUsedError;
  @JsonKey(
      required: true,
      nullable: false,
      name: 'per_page',
      fromJson: _perPageProductCountFromJson)
  int get perPageProductCount => throw _privateConstructorUsedError;
  @JsonKey(required: true, nullable: false, name: 'total')
  int get totalProducts => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MetaDataCopyWith<MetaData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetaDataCopyWith<$Res> {
  factory $MetaDataCopyWith(MetaData value, $Res Function(MetaData) then) =
      _$MetaDataCopyWithImpl<$Res, MetaData>;
  @useResult
  $Res call(
      {@JsonKey(required: true, nullable: false, name: 'current_page')
          int currentPageNumber,
      @JsonKey(required: true, nullable: false, name: 'last_page')
          int lastPageNumber,
      @JsonKey(required: true, nullable: true)
          int? from,
      @JsonKey(required: true, nullable: true)
          int? to,
      @JsonKey(required: true, nullable: false, name: 'per_page', fromJson: _perPageProductCountFromJson)
          int perPageProductCount,
      @JsonKey(required: true, nullable: false, name: 'total')
          int totalProducts});
}

/// @nodoc
class _$MetaDataCopyWithImpl<$Res, $Val extends MetaData>
    implements $MetaDataCopyWith<$Res> {
  _$MetaDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPageNumber = null,
    Object? lastPageNumber = null,
    Object? from = freezed,
    Object? to = freezed,
    Object? perPageProductCount = null,
    Object? totalProducts = null,
  }) {
    return _then(_value.copyWith(
      currentPageNumber: null == currentPageNumber
          ? _value.currentPageNumber
          : currentPageNumber // ignore: cast_nullable_to_non_nullable
              as int,
      lastPageNumber: null == lastPageNumber
          ? _value.lastPageNumber
          : lastPageNumber // ignore: cast_nullable_to_non_nullable
              as int,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int?,
      perPageProductCount: null == perPageProductCount
          ? _value.perPageProductCount
          : perPageProductCount // ignore: cast_nullable_to_non_nullable
              as int,
      totalProducts: null == totalProducts
          ? _value.totalProducts
          : totalProducts // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MetaDataCopyWith<$Res> implements $MetaDataCopyWith<$Res> {
  factory _$$_MetaDataCopyWith(
          _$_MetaData value, $Res Function(_$_MetaData) then) =
      __$$_MetaDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(required: true, nullable: false, name: 'current_page')
          int currentPageNumber,
      @JsonKey(required: true, nullable: false, name: 'last_page')
          int lastPageNumber,
      @JsonKey(required: true, nullable: true)
          int? from,
      @JsonKey(required: true, nullable: true)
          int? to,
      @JsonKey(required: true, nullable: false, name: 'per_page', fromJson: _perPageProductCountFromJson)
          int perPageProductCount,
      @JsonKey(required: true, nullable: false, name: 'total')
          int totalProducts});
}

/// @nodoc
class __$$_MetaDataCopyWithImpl<$Res>
    extends _$MetaDataCopyWithImpl<$Res, _$_MetaData>
    implements _$$_MetaDataCopyWith<$Res> {
  __$$_MetaDataCopyWithImpl(
      _$_MetaData _value, $Res Function(_$_MetaData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPageNumber = null,
    Object? lastPageNumber = null,
    Object? from = freezed,
    Object? to = freezed,
    Object? perPageProductCount = null,
    Object? totalProducts = null,
  }) {
    return _then(_$_MetaData(
      currentPageNumber: null == currentPageNumber
          ? _value.currentPageNumber
          : currentPageNumber // ignore: cast_nullable_to_non_nullable
              as int,
      lastPageNumber: null == lastPageNumber
          ? _value.lastPageNumber
          : lastPageNumber // ignore: cast_nullable_to_non_nullable
              as int,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int?,
      perPageProductCount: null == perPageProductCount
          ? _value.perPageProductCount
          : perPageProductCount // ignore: cast_nullable_to_non_nullable
              as int,
      totalProducts: null == totalProducts
          ? _value.totalProducts
          : totalProducts // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MetaData implements _MetaData {
  _$_MetaData(
      {@JsonKey(required: true, nullable: false, name: 'current_page')
          required this.currentPageNumber,
      @JsonKey(required: true, nullable: false, name: 'last_page')
          required this.lastPageNumber,
      @JsonKey(required: true, nullable: true)
          required this.from,
      @JsonKey(required: true, nullable: true)
          required this.to,
      @JsonKey(required: true, nullable: false, name: 'per_page', fromJson: _perPageProductCountFromJson)
          required this.perPageProductCount,
      @JsonKey(required: true, nullable: false, name: 'total')
          required this.totalProducts});

  factory _$_MetaData.fromJson(Map<String, dynamic> json) =>
      _$$_MetaDataFromJson(json);

  @override
  @JsonKey(required: true, nullable: false, name: 'current_page')
  final int currentPageNumber;
  @override
  @JsonKey(required: true, nullable: false, name: 'last_page')
  final int lastPageNumber;
  @override
  @JsonKey(required: true, nullable: true)
  final int? from;
  @override
  @JsonKey(required: true, nullable: true)
  final int? to;
  @override
  @JsonKey(
      required: true,
      nullable: false,
      name: 'per_page',
      fromJson: _perPageProductCountFromJson)
  final int perPageProductCount;
  @override
  @JsonKey(required: true, nullable: false, name: 'total')
  final int totalProducts;

  @override
  String toString() {
    return 'MetaData(currentPageNumber: $currentPageNumber, lastPageNumber: $lastPageNumber, from: $from, to: $to, perPageProductCount: $perPageProductCount, totalProducts: $totalProducts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MetaData &&
            (identical(other.currentPageNumber, currentPageNumber) ||
                other.currentPageNumber == currentPageNumber) &&
            (identical(other.lastPageNumber, lastPageNumber) ||
                other.lastPageNumber == lastPageNumber) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.perPageProductCount, perPageProductCount) ||
                other.perPageProductCount == perPageProductCount) &&
            (identical(other.totalProducts, totalProducts) ||
                other.totalProducts == totalProducts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, currentPageNumber,
      lastPageNumber, from, to, perPageProductCount, totalProducts);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MetaDataCopyWith<_$_MetaData> get copyWith =>
      __$$_MetaDataCopyWithImpl<_$_MetaData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MetaDataToJson(
      this,
    );
  }
}

abstract class _MetaData implements MetaData {
  factory _MetaData(
      {@JsonKey(required: true, nullable: false, name: 'current_page')
          required final int currentPageNumber,
      @JsonKey(required: true, nullable: false, name: 'last_page')
          required final int lastPageNumber,
      @JsonKey(required: true, nullable: true)
          required final int? from,
      @JsonKey(required: true, nullable: true)
          required final int? to,
      @JsonKey(required: true, nullable: false, name: 'per_page', fromJson: _perPageProductCountFromJson)
          required final int perPageProductCount,
      @JsonKey(required: true, nullable: false, name: 'total')
          required final int totalProducts}) = _$_MetaData;

  factory _MetaData.fromJson(Map<String, dynamic> json) = _$_MetaData.fromJson;

  @override
  @JsonKey(required: true, nullable: false, name: 'current_page')
  int get currentPageNumber;
  @override
  @JsonKey(required: true, nullable: false, name: 'last_page')
  int get lastPageNumber;
  @override
  @JsonKey(required: true, nullable: true)
  int? get from;
  @override
  @JsonKey(required: true, nullable: true)
  int? get to;
  @override
  @JsonKey(
      required: true,
      nullable: false,
      name: 'per_page',
      fromJson: _perPageProductCountFromJson)
  int get perPageProductCount;
  @override
  @JsonKey(required: true, nullable: false, name: 'total')
  int get totalProducts;
  @override
  @JsonKey(ignore: true)
  _$$_MetaDataCopyWith<_$_MetaData> get copyWith =>
      throw _privateConstructorUsedError;
}
