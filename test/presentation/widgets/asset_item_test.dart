import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tz_kononchyk/domain/entities/asset.dart';
import 'package:tz_kononchyk/presentation/widgets/asset_item.dart';

void main() {
  group('AssetItem', () {
    const asset = Asset(
      id: 'bitcoin',
      symbol: 'btc',
      name: 'Bitcoin',
      priceUsd: '50000.123',
    );

    testWidgets('должен отображать символ актива и форматированную цену',
        (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: AssetItem(asset: asset),
          ),
        ),
      );

      expect(find.text('BTC'), findsOneWidget);
      expect(find.text('\$50,000.12'), findsOneWidget);
    });

    testWidgets('должен отображать цветной контейнер', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: AssetItem(asset: asset),
          ),
        ),
      );

      final container = find.byType(Container).first;
      expect(container, findsOneWidget);

      final containerWidget = tester.widget<Container>(container);
      final decoration = containerWidget.decoration as BoxDecoration;
      expect(decoration.borderRadius, BorderRadius.circular(18));
    });

    testWidgets('должен правильно обрабатывать нулевую цену', (tester) async {
      const assetWithZeroPrice = Asset(
        id: 'test',
        symbol: 'test',
        name: 'Test',
        priceUsd: '0.0',
      );

      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: AssetItem(asset: assetWithZeroPrice),
          ),
        ),
      );

      expect(find.text('TEST'), findsOneWidget);
      expect(find.text('\$0.0'), findsOneWidget);
    });
  });
}
