// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'asset_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AssetEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadAssets,
    required TResult Function() loadMoreAssets,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadAssets,
    TResult? Function()? loadMoreAssets,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadAssets,
    TResult Function()? loadMoreAssets,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadAssets value) loadAssets,
    required TResult Function(LoadMoreAssets value) loadMoreAssets,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadAssets value)? loadAssets,
    TResult? Function(LoadMoreAssets value)? loadMoreAssets,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadAssets value)? loadAssets,
    TResult Function(LoadMoreAssets value)? loadMoreAssets,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssetEventCopyWith<$Res> {
  factory $AssetEventCopyWith(
          AssetEvent value, $Res Function(AssetEvent) then) =
      _$AssetEventCopyWithImpl<$Res, AssetEvent>;
}

/// @nodoc
class _$AssetEventCopyWithImpl<$Res, $Val extends AssetEvent>
    implements $AssetEventCopyWith<$Res> {
  _$AssetEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AssetEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadAssetsImplCopyWith<$Res> {
  factory _$$LoadAssetsImplCopyWith(
          _$LoadAssetsImpl value, $Res Function(_$LoadAssetsImpl) then) =
      __$$LoadAssetsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadAssetsImplCopyWithImpl<$Res>
    extends _$AssetEventCopyWithImpl<$Res, _$LoadAssetsImpl>
    implements _$$LoadAssetsImplCopyWith<$Res> {
  __$$LoadAssetsImplCopyWithImpl(
      _$LoadAssetsImpl _value, $Res Function(_$LoadAssetsImpl) _then)
      : super(_value, _then);

  /// Create a copy of AssetEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadAssetsImpl implements LoadAssets {
  const _$LoadAssetsImpl();

  @override
  String toString() {
    return 'AssetEvent.loadAssets()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadAssetsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadAssets,
    required TResult Function() loadMoreAssets,
  }) {
    return loadAssets();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadAssets,
    TResult? Function()? loadMoreAssets,
  }) {
    return loadAssets?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadAssets,
    TResult Function()? loadMoreAssets,
    required TResult orElse(),
  }) {
    if (loadAssets != null) {
      return loadAssets();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadAssets value) loadAssets,
    required TResult Function(LoadMoreAssets value) loadMoreAssets,
  }) {
    return loadAssets(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadAssets value)? loadAssets,
    TResult? Function(LoadMoreAssets value)? loadMoreAssets,
  }) {
    return loadAssets?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadAssets value)? loadAssets,
    TResult Function(LoadMoreAssets value)? loadMoreAssets,
    required TResult orElse(),
  }) {
    if (loadAssets != null) {
      return loadAssets(this);
    }
    return orElse();
  }
}

abstract class LoadAssets implements AssetEvent {
  const factory LoadAssets() = _$LoadAssetsImpl;
}

/// @nodoc
abstract class _$$LoadMoreAssetsImplCopyWith<$Res> {
  factory _$$LoadMoreAssetsImplCopyWith(_$LoadMoreAssetsImpl value,
          $Res Function(_$LoadMoreAssetsImpl) then) =
      __$$LoadMoreAssetsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadMoreAssetsImplCopyWithImpl<$Res>
    extends _$AssetEventCopyWithImpl<$Res, _$LoadMoreAssetsImpl>
    implements _$$LoadMoreAssetsImplCopyWith<$Res> {
  __$$LoadMoreAssetsImplCopyWithImpl(
      _$LoadMoreAssetsImpl _value, $Res Function(_$LoadMoreAssetsImpl) _then)
      : super(_value, _then);

  /// Create a copy of AssetEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadMoreAssetsImpl implements LoadMoreAssets {
  const _$LoadMoreAssetsImpl();

  @override
  String toString() {
    return 'AssetEvent.loadMoreAssets()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadMoreAssetsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadAssets,
    required TResult Function() loadMoreAssets,
  }) {
    return loadMoreAssets();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadAssets,
    TResult? Function()? loadMoreAssets,
  }) {
    return loadMoreAssets?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadAssets,
    TResult Function()? loadMoreAssets,
    required TResult orElse(),
  }) {
    if (loadMoreAssets != null) {
      return loadMoreAssets();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadAssets value) loadAssets,
    required TResult Function(LoadMoreAssets value) loadMoreAssets,
  }) {
    return loadMoreAssets(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadAssets value)? loadAssets,
    TResult? Function(LoadMoreAssets value)? loadMoreAssets,
  }) {
    return loadMoreAssets?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadAssets value)? loadAssets,
    TResult Function(LoadMoreAssets value)? loadMoreAssets,
    required TResult orElse(),
  }) {
    if (loadMoreAssets != null) {
      return loadMoreAssets(this);
    }
    return orElse();
  }
}

abstract class LoadMoreAssets implements AssetEvent {
  const factory LoadMoreAssets() = _$LoadMoreAssetsImpl;
}
