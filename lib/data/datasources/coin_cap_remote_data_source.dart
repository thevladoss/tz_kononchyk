import '../../core/network/dio_client.dart';
import '../models/asset_model.dart';

class CoinCapRemoteDataSource {
  final DioClient dioClient;

  CoinCapRemoteDataSource(this.dioClient);

  Future<List<AssetModel>> getAssets(
      {required int limit, required int offset}) async {
    final page = (offset ~/ limit) + 1;
    final response = await dioClient.get(
      '/coins/markets',
      queryParameters: {
        'vs_currency': 'usd',
        'order': 'market_cap_desc',
        'per_page': limit,
        'page': page,
      },
    );

    final List<dynamic> data = response.data;
    return data.map((json) => AssetModel.fromJson(json)).toList();
  }
}
