import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/asset.dart';

part 'asset_state.freezed.dart';

@freezed
class AssetState with _$AssetState {
  const factory AssetState.initial() = AssetInitial;
  const factory AssetState.loading() = AssetLoading;
  const factory AssetState.loaded({
    required List<Asset> assets,
    required bool hasReachedMax,
    @Default(false) bool isLoadingMore,
  }) = AssetLoaded;
  const factory AssetState.error(String message) = AssetError;
}
