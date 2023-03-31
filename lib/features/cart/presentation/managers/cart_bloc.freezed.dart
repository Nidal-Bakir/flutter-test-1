// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CartEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int productId, int quantity, bool locally)
        productAdded,
    required TResult Function(int productId, bool locally) productRemoved,
    required TResult Function() cartLoaded,
    required TResult Function() cartSaved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int productId, int quantity, bool locally)? productAdded,
    TResult? Function(int productId, bool locally)? productRemoved,
    TResult? Function()? cartLoaded,
    TResult? Function()? cartSaved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int productId, int quantity, bool locally)? productAdded,
    TResult Function(int productId, bool locally)? productRemoved,
    TResult Function()? cartLoaded,
    TResult Function()? cartSaved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProductAdded value) productAdded,
    required TResult Function(_ProductRemoved value) productRemoved,
    required TResult Function(_CartLoaded value) cartLoaded,
    required TResult Function(_CartSaved value) cartSaved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProductAdded value)? productAdded,
    TResult? Function(_ProductRemoved value)? productRemoved,
    TResult? Function(_CartLoaded value)? cartLoaded,
    TResult? Function(_CartSaved value)? cartSaved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProductAdded value)? productAdded,
    TResult Function(_ProductRemoved value)? productRemoved,
    TResult Function(_CartLoaded value)? cartLoaded,
    TResult Function(_CartSaved value)? cartSaved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartEventCopyWith<$Res> {
  factory $CartEventCopyWith(CartEvent value, $Res Function(CartEvent) then) =
      _$CartEventCopyWithImpl<$Res, CartEvent>;
}

/// @nodoc
class _$CartEventCopyWithImpl<$Res, $Val extends CartEvent>
    implements $CartEventCopyWith<$Res> {
  _$CartEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ProductAddedCopyWith<$Res> {
  factory _$$_ProductAddedCopyWith(
          _$_ProductAdded value, $Res Function(_$_ProductAdded) then) =
      __$$_ProductAddedCopyWithImpl<$Res>;
  @useResult
  $Res call({int productId, int quantity, bool locally});
}

/// @nodoc
class __$$_ProductAddedCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$_ProductAdded>
    implements _$$_ProductAddedCopyWith<$Res> {
  __$$_ProductAddedCopyWithImpl(
      _$_ProductAdded _value, $Res Function(_$_ProductAdded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? quantity = null,
    Object? locally = null,
  }) {
    return _then(_$_ProductAdded(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      locally: null == locally
          ? _value.locally
          : locally // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ProductAdded implements _ProductAdded {
  const _$_ProductAdded(
      {required this.productId, required this.quantity, this.locally = false});

  @override
  final int productId;
  @override
  final int quantity;
  @override
  @JsonKey()
  final bool locally;

  @override
  String toString() {
    return 'CartEvent.productAdded(productId: $productId, quantity: $quantity, locally: $locally)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductAdded &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.locally, locally) || other.locally == locally));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productId, quantity, locally);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductAddedCopyWith<_$_ProductAdded> get copyWith =>
      __$$_ProductAddedCopyWithImpl<_$_ProductAdded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int productId, int quantity, bool locally)
        productAdded,
    required TResult Function(int productId, bool locally) productRemoved,
    required TResult Function() cartLoaded,
    required TResult Function() cartSaved,
  }) {
    return productAdded(productId, quantity, locally);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int productId, int quantity, bool locally)? productAdded,
    TResult? Function(int productId, bool locally)? productRemoved,
    TResult? Function()? cartLoaded,
    TResult? Function()? cartSaved,
  }) {
    return productAdded?.call(productId, quantity, locally);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int productId, int quantity, bool locally)? productAdded,
    TResult Function(int productId, bool locally)? productRemoved,
    TResult Function()? cartLoaded,
    TResult Function()? cartSaved,
    required TResult orElse(),
  }) {
    if (productAdded != null) {
      return productAdded(productId, quantity, locally);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProductAdded value) productAdded,
    required TResult Function(_ProductRemoved value) productRemoved,
    required TResult Function(_CartLoaded value) cartLoaded,
    required TResult Function(_CartSaved value) cartSaved,
  }) {
    return productAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProductAdded value)? productAdded,
    TResult? Function(_ProductRemoved value)? productRemoved,
    TResult? Function(_CartLoaded value)? cartLoaded,
    TResult? Function(_CartSaved value)? cartSaved,
  }) {
    return productAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProductAdded value)? productAdded,
    TResult Function(_ProductRemoved value)? productRemoved,
    TResult Function(_CartLoaded value)? cartLoaded,
    TResult Function(_CartSaved value)? cartSaved,
    required TResult orElse(),
  }) {
    if (productAdded != null) {
      return productAdded(this);
    }
    return orElse();
  }
}

abstract class _ProductAdded implements CartEvent {
  const factory _ProductAdded(
      {required final int productId,
      required final int quantity,
      final bool locally}) = _$_ProductAdded;

  int get productId;
  int get quantity;
  bool get locally;
  @JsonKey(ignore: true)
  _$$_ProductAddedCopyWith<_$_ProductAdded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ProductRemovedCopyWith<$Res> {
  factory _$$_ProductRemovedCopyWith(
          _$_ProductRemoved value, $Res Function(_$_ProductRemoved) then) =
      __$$_ProductRemovedCopyWithImpl<$Res>;
  @useResult
  $Res call({int productId, bool locally});
}

/// @nodoc
class __$$_ProductRemovedCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$_ProductRemoved>
    implements _$$_ProductRemovedCopyWith<$Res> {
  __$$_ProductRemovedCopyWithImpl(
      _$_ProductRemoved _value, $Res Function(_$_ProductRemoved) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? locally = null,
  }) {
    return _then(_$_ProductRemoved(
      null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      null == locally
          ? _value.locally
          : locally // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ProductRemoved implements _ProductRemoved {
  const _$_ProductRemoved(this.productId, [this.locally = false]);

  @override
  final int productId;
  @override
  @JsonKey()
  final bool locally;

  @override
  String toString() {
    return 'CartEvent.productRemoved(productId: $productId, locally: $locally)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductRemoved &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.locally, locally) || other.locally == locally));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productId, locally);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductRemovedCopyWith<_$_ProductRemoved> get copyWith =>
      __$$_ProductRemovedCopyWithImpl<_$_ProductRemoved>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int productId, int quantity, bool locally)
        productAdded,
    required TResult Function(int productId, bool locally) productRemoved,
    required TResult Function() cartLoaded,
    required TResult Function() cartSaved,
  }) {
    return productRemoved(productId, locally);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int productId, int quantity, bool locally)? productAdded,
    TResult? Function(int productId, bool locally)? productRemoved,
    TResult? Function()? cartLoaded,
    TResult? Function()? cartSaved,
  }) {
    return productRemoved?.call(productId, locally);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int productId, int quantity, bool locally)? productAdded,
    TResult Function(int productId, bool locally)? productRemoved,
    TResult Function()? cartLoaded,
    TResult Function()? cartSaved,
    required TResult orElse(),
  }) {
    if (productRemoved != null) {
      return productRemoved(productId, locally);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProductAdded value) productAdded,
    required TResult Function(_ProductRemoved value) productRemoved,
    required TResult Function(_CartLoaded value) cartLoaded,
    required TResult Function(_CartSaved value) cartSaved,
  }) {
    return productRemoved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProductAdded value)? productAdded,
    TResult? Function(_ProductRemoved value)? productRemoved,
    TResult? Function(_CartLoaded value)? cartLoaded,
    TResult? Function(_CartSaved value)? cartSaved,
  }) {
    return productRemoved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProductAdded value)? productAdded,
    TResult Function(_ProductRemoved value)? productRemoved,
    TResult Function(_CartLoaded value)? cartLoaded,
    TResult Function(_CartSaved value)? cartSaved,
    required TResult orElse(),
  }) {
    if (productRemoved != null) {
      return productRemoved(this);
    }
    return orElse();
  }
}

abstract class _ProductRemoved implements CartEvent {
  const factory _ProductRemoved(final int productId, [final bool locally]) =
      _$_ProductRemoved;

  int get productId;
  bool get locally;
  @JsonKey(ignore: true)
  _$$_ProductRemovedCopyWith<_$_ProductRemoved> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CartLoadedCopyWith<$Res> {
  factory _$$_CartLoadedCopyWith(
          _$_CartLoaded value, $Res Function(_$_CartLoaded) then) =
      __$$_CartLoadedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CartLoadedCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$_CartLoaded>
    implements _$$_CartLoadedCopyWith<$Res> {
  __$$_CartLoadedCopyWithImpl(
      _$_CartLoaded _value, $Res Function(_$_CartLoaded) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_CartLoaded implements _CartLoaded {
  const _$_CartLoaded();

  @override
  String toString() {
    return 'CartEvent.cartLoaded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CartLoaded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int productId, int quantity, bool locally)
        productAdded,
    required TResult Function(int productId, bool locally) productRemoved,
    required TResult Function() cartLoaded,
    required TResult Function() cartSaved,
  }) {
    return cartLoaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int productId, int quantity, bool locally)? productAdded,
    TResult? Function(int productId, bool locally)? productRemoved,
    TResult? Function()? cartLoaded,
    TResult? Function()? cartSaved,
  }) {
    return cartLoaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int productId, int quantity, bool locally)? productAdded,
    TResult Function(int productId, bool locally)? productRemoved,
    TResult Function()? cartLoaded,
    TResult Function()? cartSaved,
    required TResult orElse(),
  }) {
    if (cartLoaded != null) {
      return cartLoaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProductAdded value) productAdded,
    required TResult Function(_ProductRemoved value) productRemoved,
    required TResult Function(_CartLoaded value) cartLoaded,
    required TResult Function(_CartSaved value) cartSaved,
  }) {
    return cartLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProductAdded value)? productAdded,
    TResult? Function(_ProductRemoved value)? productRemoved,
    TResult? Function(_CartLoaded value)? cartLoaded,
    TResult? Function(_CartSaved value)? cartSaved,
  }) {
    return cartLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProductAdded value)? productAdded,
    TResult Function(_ProductRemoved value)? productRemoved,
    TResult Function(_CartLoaded value)? cartLoaded,
    TResult Function(_CartSaved value)? cartSaved,
    required TResult orElse(),
  }) {
    if (cartLoaded != null) {
      return cartLoaded(this);
    }
    return orElse();
  }
}

abstract class _CartLoaded implements CartEvent {
  const factory _CartLoaded() = _$_CartLoaded;
}

/// @nodoc
abstract class _$$_CartSavedCopyWith<$Res> {
  factory _$$_CartSavedCopyWith(
          _$_CartSaved value, $Res Function(_$_CartSaved) then) =
      __$$_CartSavedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CartSavedCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$_CartSaved>
    implements _$$_CartSavedCopyWith<$Res> {
  __$$_CartSavedCopyWithImpl(
      _$_CartSaved _value, $Res Function(_$_CartSaved) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_CartSaved implements _CartSaved {
  const _$_CartSaved();

  @override
  String toString() {
    return 'CartEvent.cartSaved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CartSaved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int productId, int quantity, bool locally)
        productAdded,
    required TResult Function(int productId, bool locally) productRemoved,
    required TResult Function() cartLoaded,
    required TResult Function() cartSaved,
  }) {
    return cartSaved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int productId, int quantity, bool locally)? productAdded,
    TResult? Function(int productId, bool locally)? productRemoved,
    TResult? Function()? cartLoaded,
    TResult? Function()? cartSaved,
  }) {
    return cartSaved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int productId, int quantity, bool locally)? productAdded,
    TResult Function(int productId, bool locally)? productRemoved,
    TResult Function()? cartLoaded,
    TResult Function()? cartSaved,
    required TResult orElse(),
  }) {
    if (cartSaved != null) {
      return cartSaved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProductAdded value) productAdded,
    required TResult Function(_ProductRemoved value) productRemoved,
    required TResult Function(_CartLoaded value) cartLoaded,
    required TResult Function(_CartSaved value) cartSaved,
  }) {
    return cartSaved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProductAdded value)? productAdded,
    TResult? Function(_ProductRemoved value)? productRemoved,
    TResult? Function(_CartLoaded value)? cartLoaded,
    TResult? Function(_CartSaved value)? cartSaved,
  }) {
    return cartSaved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProductAdded value)? productAdded,
    TResult Function(_ProductRemoved value)? productRemoved,
    TResult Function(_CartLoaded value)? cartLoaded,
    TResult Function(_CartSaved value)? cartSaved,
    required TResult orElse(),
  }) {
    if (cartSaved != null) {
      return cartSaved(this);
    }
    return orElse();
  }
}

abstract class _CartSaved implements CartEvent {
  const factory _CartSaved() = _$_CartSaved;
}

/// @nodoc
mixin _$CartState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inProgress,
    required TResult Function(Cart cart) loadSuccess,
    required TResult Function(BaseError error) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? inProgress,
    TResult? Function(Cart cart)? loadSuccess,
    TResult? Function(BaseError error)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(Cart cart)? loadSuccess,
    TResult Function(BaseError error)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res, CartState>;
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res, $Val extends CartState>
    implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InProgressCopyWith<$Res> {
  factory _$$_InProgressCopyWith(
          _$_InProgress value, $Res Function(_$_InProgress) then) =
      __$$_InProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InProgressCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$_InProgress>
    implements _$$_InProgressCopyWith<$Res> {
  __$$_InProgressCopyWithImpl(
      _$_InProgress _value, $Res Function(_$_InProgress) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_InProgress implements _InProgress {
  const _$_InProgress();

  @override
  String toString() {
    return 'CartState.inProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_InProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inProgress,
    required TResult Function(Cart cart) loadSuccess,
    required TResult Function(BaseError error) loadFailure,
  }) {
    return inProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? inProgress,
    TResult? Function(Cart cart)? loadSuccess,
    TResult? Function(BaseError error)? loadFailure,
  }) {
    return inProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(Cart cart)? loadSuccess,
    TResult Function(BaseError error)? loadFailure,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class _InProgress implements CartState {
  const factory _InProgress() = _$_InProgress;
}

/// @nodoc
abstract class _$$_LoadSuccessCopyWith<$Res> {
  factory _$$_LoadSuccessCopyWith(
          _$_LoadSuccess value, $Res Function(_$_LoadSuccess) then) =
      __$$_LoadSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({Cart cart});

  $CartCopyWith<$Res> get cart;
}

/// @nodoc
class __$$_LoadSuccessCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$_LoadSuccess>
    implements _$$_LoadSuccessCopyWith<$Res> {
  __$$_LoadSuccessCopyWithImpl(
      _$_LoadSuccess _value, $Res Function(_$_LoadSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cart = null,
  }) {
    return _then(_$_LoadSuccess(
      null == cart
          ? _value.cart
          : cart // ignore: cast_nullable_to_non_nullable
              as Cart,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CartCopyWith<$Res> get cart {
    return $CartCopyWith<$Res>(_value.cart, (value) {
      return _then(_value.copyWith(cart: value));
    });
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.cart);

  @override
  final Cart cart;

  @override
  String toString() {
    return 'CartState.loadSuccess(cart: $cart)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadSuccess &&
            (identical(other.cart, cart) || other.cart == cart));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cart);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadSuccessCopyWith<_$_LoadSuccess> get copyWith =>
      __$$_LoadSuccessCopyWithImpl<_$_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inProgress,
    required TResult Function(Cart cart) loadSuccess,
    required TResult Function(BaseError error) loadFailure,
  }) {
    return loadSuccess(cart);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? inProgress,
    TResult? Function(Cart cart)? loadSuccess,
    TResult? Function(BaseError error)? loadFailure,
  }) {
    return loadSuccess?.call(cart);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(Cart cart)? loadSuccess,
    TResult Function(BaseError error)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(cart);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements CartState {
  const factory _LoadSuccess(final Cart cart) = _$_LoadSuccess;

  Cart get cart;
  @JsonKey(ignore: true)
  _$$_LoadSuccessCopyWith<_$_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadFailureCopyWith<$Res> {
  factory _$$_LoadFailureCopyWith(
          _$_LoadFailure value, $Res Function(_$_LoadFailure) then) =
      __$$_LoadFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({BaseError error});
}

/// @nodoc
class __$$_LoadFailureCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$_LoadFailure>
    implements _$$_LoadFailureCopyWith<$Res> {
  __$$_LoadFailureCopyWithImpl(
      _$_LoadFailure _value, $Res Function(_$_LoadFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_LoadFailure(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as BaseError,
    ));
  }
}

/// @nodoc

class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.error);

  @override
  final BaseError error;

  @override
  String toString() {
    return 'CartState.loadFailure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadFailure &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadFailureCopyWith<_$_LoadFailure> get copyWith =>
      __$$_LoadFailureCopyWithImpl<_$_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inProgress,
    required TResult Function(Cart cart) loadSuccess,
    required TResult Function(BaseError error) loadFailure,
  }) {
    return loadFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? inProgress,
    TResult? Function(Cart cart)? loadSuccess,
    TResult? Function(BaseError error)? loadFailure,
  }) {
    return loadFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(Cart cart)? loadSuccess,
    TResult Function(BaseError error)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements CartState {
  const factory _LoadFailure(final BaseError error) = _$_LoadFailure;

  BaseError get error;
  @JsonKey(ignore: true)
  _$$_LoadFailureCopyWith<_$_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
