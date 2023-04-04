// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'products_state_result_holder.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductsStateResultHolder {
  UnmodifiableListView<Product> get products =>
      throw _privateConstructorUsedError;
  bool get canLoadMore => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductsStateResultHolderCopyWith<ProductsStateResultHolder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsStateResultHolderCopyWith<$Res> {
  factory $ProductsStateResultHolderCopyWith(ProductsStateResultHolder value,
          $Res Function(ProductsStateResultHolder) then) =
      _$ProductsStateResultHolderCopyWithImpl<$Res, ProductsStateResultHolder>;
  @useResult
  $Res call({UnmodifiableListView<Product> products, bool canLoadMore});
}

/// @nodoc
class _$ProductsStateResultHolderCopyWithImpl<$Res,
        $Val extends ProductsStateResultHolder>
    implements $ProductsStateResultHolderCopyWith<$Res> {
  _$ProductsStateResultHolderCopyWithImpl(this._value, this._then);

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
abstract class _$$_ProductsStateResultHolderCopyWith<$Res>
    implements $ProductsStateResultHolderCopyWith<$Res> {
  factory _$$_ProductsStateResultHolderCopyWith(
          _$_ProductsStateResultHolder value,
          $Res Function(_$_ProductsStateResultHolder) then) =
      __$$_ProductsStateResultHolderCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UnmodifiableListView<Product> products, bool canLoadMore});
}

/// @nodoc
class __$$_ProductsStateResultHolderCopyWithImpl<$Res>
    extends _$ProductsStateResultHolderCopyWithImpl<$Res,
        _$_ProductsStateResultHolder>
    implements _$$_ProductsStateResultHolderCopyWith<$Res> {
  __$$_ProductsStateResultHolderCopyWithImpl(
      _$_ProductsStateResultHolder _value,
      $Res Function(_$_ProductsStateResultHolder) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? canLoadMore = null,
  }) {
    return _then(_$_ProductsStateResultHolder(
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

class _$_ProductsStateResultHolder implements _ProductsStateResultHolder {
  _$_ProductsStateResultHolder(
      {required this.products, required this.canLoadMore});

  @override
  final UnmodifiableListView<Product> products;
  @override
  final bool canLoadMore;

  @override
  String toString() {
    return 'ProductsStateResultHolder(products: $products, canLoadMore: $canLoadMore)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductsStateResultHolder &&
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
  _$$_ProductsStateResultHolderCopyWith<_$_ProductsStateResultHolder>
      get copyWith => __$$_ProductsStateResultHolderCopyWithImpl<
          _$_ProductsStateResultHolder>(this, _$identity);
}

abstract class _ProductsStateResultHolder implements ProductsStateResultHolder {
  factory _ProductsStateResultHolder(
      {required final UnmodifiableListView<Product> products,
      required final bool canLoadMore}) = _$_ProductsStateResultHolder;

  @override
  UnmodifiableListView<Product> get products;
  @override
  bool get canLoadMore;
  @override
  @JsonKey(ignore: true)
  _$$_ProductsStateResultHolderCopyWith<_$_ProductsStateResultHolder>
      get copyWith => throw _privateConstructorUsedError;
}
