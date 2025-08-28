import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tz_kononchyk/domain/entities/asset.dart';
import 'package:tz_kononchyk/domain/repositories/asset_repository.dart';
import 'package:tz_kononchyk/domain/usecases/fetch_assets.dart';

class MockAssetRepository extends Mock implements AssetRepository {}

void main() {
  late FetchAssets fetchAssets;
  late MockAssetRepository mockRepository;

  setUp(() {
    mockRepository = MockAssetRepository();
    fetchAssets = FetchAssets(mockRepository);
  });

  group('FetchAssets', () {
    const assets = [
      Asset(id: '1', symbol: 'btc', name: 'Bitcoin', priceUsd: '50000.0'),
      Asset(id: '2', symbol: 'eth', name: 'Ethereum', priceUsd: '3000.0'),
    ];

    test('должен возвращать список активов при успешном вызове репозитория',
        () async {
      when(() => mockRepository.getAssets(limit: 10, offset: 0))
          .thenAnswer((_) async => assets);

      final result = await fetchAssets(limit: 10, offset: 0);

      expect(result, assets);
      verify(() => mockRepository.getAssets(limit: 10, offset: 0)).called(1);
    });

    test('должен выбрасывать исключение при ошибке репозитория', () async {
      when(() => mockRepository.getAssets(limit: 10, offset: 0))
          .thenThrow(Exception('Network error'));

      expect(
        () => fetchAssets(limit: 10, offset: 0),
        throwsException,
      );
    });
  });
}
