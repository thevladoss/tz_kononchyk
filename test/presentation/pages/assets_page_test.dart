import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tz_kononchyk/domain/entities/asset.dart';
import 'package:tz_kononchyk/presentation/blocs/asset_bloc.dart';
import 'package:tz_kononchyk/presentation/blocs/asset_event.dart';
import 'package:tz_kononchyk/presentation/blocs/asset_state.dart';
import 'package:tz_kononchyk/presentation/pages/assets_page.dart';
import 'package:tz_kononchyk/presentation/widgets/asset_item.dart';

class MockAssetBloc extends Mock implements AssetBloc {
  @override
  Stream<AssetState> get stream => const Stream.empty();

  @override
  void add(AssetEvent event) {}

  @override
  Future<void> close() async {}

  @override
  bool get isClosed => false;
}

void main() {
  late MockAssetBloc mockAssetBloc;

  setUpAll(() {
    registerFallbackValue(const AssetEvent.loadAssets());
  });

  setUp(() {
    mockAssetBloc = MockAssetBloc();
  });

  Widget createTestWidget() {
    return MaterialApp(
      home: BlocProvider<AssetBloc>(
        create: (_) => mockAssetBloc,
        child: const AssetsPage(),
      ),
    );
  }

  group('AssetsPage', () {
    const assets = [
      Asset(id: '1', symbol: 'btc', name: 'Bitcoin', priceUsd: '50000.0'),
      Asset(id: '2', symbol: 'eth', name: 'Ethereum', priceUsd: '3000.0'),
    ];

    testWidgets('должен отображать индикатор загрузки при состоянии loading',
        (tester) async {
      when(() => mockAssetBloc.state).thenReturn(const AssetState.loading());

      await tester.pumpWidget(createTestWidget());

      expect(find.byType(CupertinoActivityIndicator), findsOneWidget);
    });

    testWidgets('должен отображать активы при состоянии loaded',
        (tester) async {
      when(() => mockAssetBloc.state).thenReturn(
        AssetState.loaded(assets: assets, hasReachedMax: false),
      );

      await tester.pumpWidget(createTestWidget());

      expect(find.byType(AssetItem), findsNWidgets(2));
      expect(find.text('BTC'), findsOneWidget);
      expect(find.text('ETH'), findsOneWidget);
    });

    testWidgets('должен отображать сообщение об ошибке при состоянии error',
        (tester) async {
      when(() => mockAssetBloc.state).thenReturn(
        const AssetState.error('Network error'),
      );

      await tester.pumpWidget(createTestWidget());

      expect(find.text('Ошибка загрузки данных'), findsOneWidget);
      expect(find.text('Network error'), findsOneWidget);
      expect(find.text('Повторить'), findsOneWidget);
    });

    testWidgets('должен иметь кнопку повтора при состоянии error',
        (tester) async {
      when(() => mockAssetBloc.state).thenReturn(
        const AssetState.error('Network error'),
      );

      await tester.pumpWidget(createTestWidget());

      expect(find.text('Повторить'), findsOneWidget);
    });

    testWidgets(
        'должен отображать индикатор дополнительной загрузки при isLoadingMore равном true',
        (tester) async {
      when(() => mockAssetBloc.state).thenReturn(
        AssetState.loaded(
            assets: assets, hasReachedMax: false, isLoadingMore: true),
      );

      await tester.pumpWidget(createTestWidget());

      expect(find.byType(AssetItem), findsNWidgets(2));
      expect(find.byType(CupertinoActivityIndicator), findsOneWidget);
    });
  });
}
