// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'products_state_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductsStateResult {
  UnmodifiableListView<Product> get products =>
      throw _privateConstructorUsedError;
  bool get canLoadMore => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductsStateResultCopyWith<ProductsStateResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsStateResultCopyWith<$Res> {
  factory $ProductsStateResultCopyWith(
          ProductsStateResult value, $Res Function(ProductsStateResult) then) =
      _$ProductsStateResultCopyWithImpl<$Res, ProductsStateResult>;
  @useResult
  $Res call({UnmodifiableListView<Product> products, bool canLoadMore});
}

/// @nodoc
class _$ProductsStateResultCopyWithImpl<$Res, $Val extends ProductsStateResult>
    implements $ProductsStateResultCopyWith<$Res> {
  _$ProductsStateResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? canLoadMore = null,
  }) {
    return _then(_value.copyWith(
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as UnmodifiableListView<Product>,
      canLoadMore: null == canLoadMore
          ? _value.canLoadMore
          : canLoadMore // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductsStateResultCopyWith<$Res>
    implements $ProductsStateResultCopyWith<$Res> {
  factory _$$_ProductsStateResultCopyWith(_$_ProductsStateResult value,
          $Res Function(_$_ProductsStateResult) then) =
      __$$_ProductsStateResultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UnmodifiableListView<Product> products, bool canLoadMore});
}

/// @nodoc
class __$$_ProductsStateResultCopyWithImpl<$Res>
    extends _$ProductsStateResultCopyWithImpl<$Res, _$_ProductsStateResult>
    implements _$$_ProductsStateResultCopyWith<$Res> {
  __$$_ProductsStateResultCopyWithImpl(_$_ProductsStateResult _value,
      $Res Function(_$_ProductsStateResult) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? canLoadMore = null,
  }) {
    return _then(_$_ProductsStateResult(
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as UnmodifiableListView<Product>,
      canLoadMore: null == canLoadMore
          ? _value.canLoadMore
          : canLoadMore // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ProductsStateResult implements _ProductsStateResult {
  _$_ProductsStateResult({required this.products, required this.canLoadMore});

  @override
  final UnmodifiableListView<Product> products;
  @override
  final bool canLoadMore;

  @override
  String toString() {
    return 'ProductsStateResult(products: $products, canLoadMore: $canLoadMore)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductsStateResult &&
            const DeepCollectionEquality().equals(other.products, products) &&
            (identical(other.canLoadMore, canLoadMore) ||
                other.canLoadMore == canLoadMore));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(products), canLoadMore);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductsStateResultCopyWith<_$_ProductsStateResult> get copyWith =>
      __$$_ProductsStateResultCopyWithImpl<_$_ProductsStateResult>(
          this, _$identity);
}

abstract class _ProductsStateResult implements ProductsStateResult {
  factory _ProductsStateResult(
      {required final UnmodifiableListView<Product> products,
      required final bool canLoadMore}) = _$_ProductsStateResult;

  @override
  UnmodifiableListView<Product> get products;
  @override
  bool get canLoadMore;
  @override
  @JsonKey(ignore: true)
  _$$_ProductsStateResultCopyWith<_$_ProductsStateResult> get copyWith =>
      throw _privateConstructorUsedError;
}
