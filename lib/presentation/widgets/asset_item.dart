import 'package:flutter/material.dart';
import '../../core/utils/color_utils.dart';
import '../../core/utils/number_formatter.dart';
import '../../domain/entities/asset.dart';

class AssetItem extends StatelessWidget {
  final Asset asset;

  const AssetItem({super.key, required this.asset});

  @override
  Widget build(BuildContext context) {
    final color = colorFromString(asset.id);
    final price = double.tryParse(asset.priceUsd) ?? 0.0;
    final formattedPrice = NumberFormatter.formatPrice(price);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SizedBox(
        height: 72,
        child: Row(
          children: [
            Container(
              width: 56,
              height: 56,
              decoration: BoxDecoration(
                color: color.withAlpha((255 * 0.1).toInt()),
                borderRadius: BorderRadius.circular(18),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    asset.symbol.toUpperCase(),
                    style: const TextStyle(
                      fontFamily: 'SF Pro Text',
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            Text(
              formattedPrice,
              style: const TextStyle(
                fontFamily: 'SF Pro Text',
                fontSize: 17,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
