import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/asset.dart';

part 'asset_model.freezed.dart';
part 'asset_model.g.dart';

@freezed
class AssetModel with _$AssetModel {
  const factory AssetModel({
    required String id,
    required String symbol,
    required String name,
    @JsonKey(name: 'current_price') required double currentPrice,
  }) = _AssetModel;

  factory AssetModel.fromJson(Map<String, dynamic> json) =>
      _$AssetModelFromJson(json);
}

extension AssetModelX on AssetModel {
  Asset toDomain() {
    return Asset(
      id: id,
      symbol: symbol,
      name: name,
      priceUsd: currentPrice.toString(),
    );
  }
}
