import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tz_kononchyk/domain/entities/asset.dart';
import 'package:tz_kononchyk/domain/usecases/fetch_assets.dart';
import 'package:tz_kononchyk/presentation/blocs/asset_bloc.dart';
import 'package:tz_kononchyk/presentation/blocs/asset_event.dart';
import 'package:tz_kononchyk/presentation/blocs/asset_state.dart';

class MockFetchAssets extends Mock implements FetchAssets {}

void main() {
  late AssetBloc assetBloc;
  late MockFetchAssets mockFetchAssets;

  setUp(() {
    mockFetchAssets = MockFetchAssets();
    assetBloc = AssetBloc(mockFetchAssets);
  });

  tearDown(() {
    assetBloc.close();
  });

  group('AssetBloc', () {
    const assets = [
      Asset(id: '1', symbol: 'btc', name: 'Bitcoin', priceUsd: '50000.0'),
      Asset(id: '2', symbol: 'eth', name: 'Ethereum', priceUsd: '3000.0'),
    ];

    test('начальное состояние должно быть AssetInitial', () {
      expect(assetBloc.state, const AssetState.initial());
    });

    blocTest<AssetBloc, AssetState>(
      'выдает [loading, loaded] при успешном LoadAssets',
      build: () {
        when(() => mockFetchAssets(limit: 15, offset: 0))
            .thenAnswer((_) async => assets);
        return assetBloc;
      },
      act: (bloc) => bloc.add(const AssetEvent.loadAssets()),
      expect: () => [
        const AssetState.loading(),
        AssetState.loaded(assets: assets, hasReachedMax: true),
      ],
    );

    blocTest<AssetBloc, AssetState>(
      'выдает [loading, error] при ошибке LoadAssets',
      build: () {
        when(() => mockFetchAssets(limit: 15, offset: 0))
            .thenThrow(Exception('Network error'));
        return assetBloc;
      },
      act: (bloc) => bloc.add(const AssetEvent.loadAssets()),
      expect: () => [
        const AssetState.loading(),
        const AssetState.error('Exception: Network error'),
      ],
    );

    blocTest<AssetBloc, AssetState>(
      'не выдает состояние при LoadMoreAssets и hasReachedMax равном true',
      build: () {
        return assetBloc;
      },
      seed: () => AssetState.loaded(assets: assets, hasReachedMax: true),
      act: (bloc) => bloc.add(const AssetEvent.loadMoreAssets()),
      expect: () => [],
    );
  });
}
