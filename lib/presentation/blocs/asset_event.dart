import 'package:freezed_annotation/freezed_annotation.dart';

part 'asset_event.freezed.dart';

@freezed
class AssetEvent with _$AssetEvent {
  const factory AssetEvent.loadAssets() = LoadAssets;
  const factory AssetEvent.loadMoreAssets() = LoadMoreAssets;
}
