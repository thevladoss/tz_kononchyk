import 'package:flutter_test/flutter_test.dart';
import 'package:tz_kononchyk/data/models/asset_model.dart';
import 'package:tz_kononchyk/domain/entities/asset.dart';

void main() {
  group('AssetModel', () {
    const assetModel = AssetModel(
      id: '1',
      symbol: 'btc',
      name: 'Bitcoin',
      currentPrice: 50000.0,
    );

    test('должен правильно конвертировать из JSON', () {
      final json = {
        'id': '1',
        'symbol': 'btc',
        'name': 'Bitcoin',
        'current_price': 50000.0,
      };

      final result = AssetModel.fromJson(json);

      expect(result.id, '1');
      expect(result.symbol, 'btc');
      expect(result.name, 'Bitcoin');
      expect(result.currentPrice, 50000.0);
    });

    test('должен правильно конвертировать в сущность', () {
      final result = assetModel.toDomain();

      expect(result, isA<Asset>());
      expect(result.id, '1');
      expect(result.symbol, 'btc');
      expect(result.name, 'Bitcoin');
      expect(result.priceUsd, '50000.0');
    });
  });
}
