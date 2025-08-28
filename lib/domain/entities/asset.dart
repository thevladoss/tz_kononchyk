import 'package:freezed_annotation/freezed_annotation.dart';

part 'asset.freezed.dart';

@freezed
class Asset with _$Asset {
  const factory Asset({
    required String id,
    required String symbol,
    required String name,
    required String priceUsd,
  }) = _Asset;
}
