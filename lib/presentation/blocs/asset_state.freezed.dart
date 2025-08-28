// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'asset_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AssetState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<Asset> assets, bool hasReachedMax, bool isLoadingMore)
        loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<Asset> assets, bool hasReachedMax, bool isLoadingMore)?
        loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<Asset> assets, bool hasReachedMax, bool isLoadingMore)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AssetInitial value) initial,
    required TResult Function(AssetLoading value) loading,
    required TResult Function(AssetLoaded value) loaded,
    required TResult Function(AssetError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AssetInitial value)? initial,
    TResult? Function(AssetLoading value)? loading,
    TResult? Function(AssetLoaded value)? loaded,
    TResult? Function(AssetError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AssetInitial value)? initial,
    TResult Function(AssetLoading value)? loading,
    TResult Function(AssetLoaded value)? loaded,
    TResult Function(AssetError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssetStateCopyWith<$Res> {
  factory $AssetStateCopyWith(
          AssetState value, $Res Function(AssetState) then) =
      _$AssetStateCopyWithImpl<$Res, AssetState>;
}

/// @nodoc
class _$AssetStateCopyWithImpl<$Res, $Val extends AssetState>
    implements $AssetStateCopyWith<$Res> {
  _$AssetStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AssetState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AssetInitialImplCopyWith<$Res> {
  factory _$$AssetInitialImplCopyWith(
          _$AssetInitialImpl value, $Res Function(_$AssetInitialImpl) then) =
      __$$AssetInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AssetInitialImplCopyWithImpl<$Res>
    extends _$AssetStateCopyWithImpl<$Res, _$AssetInitialImpl>
    implements _$$AssetInitialImplCopyWith<$Res> {
  __$$AssetInitialImplCopyWithImpl(
      _$AssetInitialImpl _value, $Res Function(_$AssetInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of AssetState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AssetInitialImpl implements AssetInitial {
  const _$AssetInitialImpl();

  @override
  String toString() {
    return 'AssetState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AssetInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<Asset> assets, bool hasReachedMax, bool isLoadingMore)
        loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<Asset> assets, bool hasReachedMax, bool isLoadingMore)?
        loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<Asset> assets, bool hasReachedMax, bool isLoadingMore)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AssetInitial value) initial,
    required TResult Function(AssetLoading value) loading,
    required TResult Function(AssetLoaded value) loaded,
    required TResult Function(AssetError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AssetInitial value)? initial,
    TResult? Function(AssetLoading value)? loading,
    TResult? Function(AssetLoaded value)? loaded,
    TResult? Function(AssetError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AssetInitial value)? initial,
    TResult Function(AssetLoading value)? loading,
    TResult Function(AssetLoaded value)? loaded,
    TResult Function(AssetError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class AssetInitial implements AssetState {
  const factory AssetInitial() = _$AssetInitialImpl;
}

/// @nodoc
abstract class _$$AssetLoadingImplCopyWith<$Res> {
  factory _$$AssetLoadingImplCopyWith(
          _$AssetLoadingImpl value, $Res Function(_$AssetLoadingImpl) then) =
      __$$AssetLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AssetLoadingImplCopyWithImpl<$Res>
    extends _$AssetStateCopyWithImpl<$Res, _$AssetLoadingImpl>
    implements _$$AssetLoadingImplCopyWith<$Res> {
  __$$AssetLoadingImplCopyWithImpl(
      _$AssetLoadingImpl _value, $Res Function(_$AssetLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of AssetState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AssetLoadingImpl implements AssetLoading {
  const _$AssetLoadingImpl();

  @override
  String toString() {
    return 'AssetState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AssetLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<Asset> assets, bool hasReachedMax, bool isLoadingMore)
        loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<Asset> assets, bool hasReachedMax, bool isLoadingMore)?
        loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<Asset> assets, bool hasReachedMax, bool isLoadingMore)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AssetInitial value) initial,
    required TResult Function(AssetLoading value) loading,
    required TResult Function(AssetLoaded value) loaded,
    required TResult Function(AssetError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AssetInitial value)? initial,
    TResult? Function(AssetLoading value)? loading,
    TResult? Function(AssetLoaded value)? loaded,
    TResult? Function(AssetError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AssetInitial value)? initial,
    TResult Function(AssetLoading value)? loading,
    TResult Function(AssetLoaded value)? loaded,
    TResult Function(AssetError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AssetLoading implements AssetState {
  const factory AssetLoading() = _$AssetLoadingImpl;
}

/// @nodoc
abstract class _$$AssetLoadedImplCopyWith<$Res> {
  factory _$$AssetLoadedImplCopyWith(
          _$AssetLoadedImpl value, $Res Function(_$AssetLoadedImpl) then) =
      __$$AssetLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Asset> assets, bool hasReachedMax, bool isLoadingMore});
}

/// @nodoc
class __$$AssetLoadedImplCopyWithImpl<$Res>
    extends _$AssetStateCopyWithImpl<$Res, _$AssetLoadedImpl>
    implements _$$AssetLoadedImplCopyWith<$Res> {
  __$$AssetLoadedImplCopyWithImpl(
      _$AssetLoadedImpl _value, $Res Function(_$AssetLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AssetState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? assets = null,
    Object? hasReachedMax = null,
    Object? isLoadingMore = null,
  }) {
    return _then(_$AssetLoadedImpl(
      assets: null == assets
          ? _value._assets
          : assets // ignore: cast_nullable_to_non_nullable
              as List<Asset>,
      hasReachedMax: null == hasReachedMax
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingMore: null == isLoadingMore
          ? _value.isLoadingMore
          : isLoadingMore // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AssetLoadedImpl implements AssetLoaded {
  const _$AssetLoadedImpl(
      {required final List<Asset> assets,
      required this.hasReachedMax,
      this.isLoadingMore = false})
      : _assets = assets;

  final List<Asset> _assets;
  @override
  List<Asset> get assets {
    if (_assets is EqualUnmodifiableListView) return _assets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_assets);
  }

  @override
  final bool hasReachedMax;
  @override
  @JsonKey()
  final bool isLoadingMore;

  @override
  String toString() {
    return 'AssetState.loaded(assets: $assets, hasReachedMax: $hasReachedMax, isLoadingMore: $isLoadingMore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssetLoadedImpl &&
            const DeepCollectionEquality().equals(other._assets, _assets) &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                other.hasReachedMax == hasReachedMax) &&
            (identical(other.isLoadingMore, isLoadingMore) ||
                other.isLoadingMore == isLoadingMore));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_assets),
      hasReachedMax,
      isLoadingMore);

  /// Create a copy of AssetState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AssetLoadedImplCopyWith<_$AssetLoadedImpl> get copyWith =>
      __$$AssetLoadedImplCopyWithImpl<_$AssetLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<Asset> assets, bool hasReachedMax, bool isLoadingMore)
        loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(assets, hasReachedMax, isLoadingMore);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<Asset> assets, bool hasReachedMax, bool isLoadingMore)?
        loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(assets, hasReachedMax, isLoadingMore);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<Asset> assets, bool hasReachedMax, bool isLoadingMore)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(assets, hasReachedMax, isLoadingMore);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AssetInitial value) initial,
    required TResult Function(AssetLoading value) loading,
    required TResult Function(AssetLoaded value) loaded,
    required TResult Function(AssetError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AssetInitial value)? initial,
    TResult? Function(AssetLoading value)? loading,
    TResult? Function(AssetLoaded value)? loaded,
    TResult? Function(AssetError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AssetInitial value)? initial,
    TResult Function(AssetLoading value)? loading,
    TResult Function(AssetLoaded value)? loaded,
    TResult Function(AssetError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class AssetLoaded implements AssetState {
  const factory AssetLoaded(
      {required final List<Asset> assets,
      required final bool hasReachedMax,
      final bool isLoadingMore}) = _$AssetLoadedImpl;

  List<Asset> get assets;
  bool get hasReachedMax;
  bool get isLoadingMore;

  /// Create a copy of AssetState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AssetLoadedImplCopyWith<_$AssetLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AssetErrorImplCopyWith<$Res> {
  factory _$$AssetErrorImplCopyWith(
          _$AssetErrorImpl value, $Res Function(_$AssetErrorImpl) then) =
      __$$AssetErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$AssetErrorImplCopyWithImpl<$Res>
    extends _$AssetStateCopyWithImpl<$Res, _$AssetErrorImpl>
    implements _$$AssetErrorImplCopyWith<$Res> {
  __$$AssetErrorImplCopyWithImpl(
      _$AssetErrorImpl _value, $Res Function(_$AssetErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of AssetState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$AssetErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AssetErrorImpl implements AssetError {
  const _$AssetErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AssetState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssetErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of AssetState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AssetErrorImplCopyWith<_$AssetErrorImpl> get copyWith =>
      __$$AssetErrorImplCopyWithImpl<_$AssetErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<Asset> assets, bool hasReachedMax, bool isLoadingMore)
        loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<Asset> assets, bool hasReachedMax, bool isLoadingMore)?
        loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<Asset> assets, bool hasReachedMax, bool isLoadingMore)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AssetInitial value) initial,
    required TResult Function(AssetLoading value) loading,
    required TResult Function(AssetLoaded value) loaded,
    required TResult Function(AssetError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AssetInitial value)? initial,
    TResult? Function(AssetLoading value)? loading,
    TResult? Function(AssetLoaded value)? loaded,
    TResult? Function(AssetError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AssetInitial value)? initial,
    TResult Function(AssetLoading value)? loading,
    TResult Function(AssetLoaded value)? loaded,
    TResult Function(AssetError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class AssetError implements AssetState {
  const factory AssetError(final String message) = _$AssetErrorImpl;

  String get message;

  /// Create a copy of AssetState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AssetErrorImplCopyWith<_$AssetErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
