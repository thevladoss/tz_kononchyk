import '../../domain/entities/asset.dart';
import '../../domain/repositories/asset_repository.dart';
import '../datasources/coin_cap_remote_data_source.dart';
import '../models/asset_model.dart';

class AssetRepositoryImpl implements AssetRepository {
  final CoinCapRemoteDataSource remoteDataSource;

  AssetRepositoryImpl(this.remoteDataSource);

  @override
  Future<List<Asset>> getAssets(
      {required int limit, required int offset}) async {
    final models =
        await remoteDataSource.getAssets(limit: limit, offset: offset);

    return models.map((model) => model.toDomain()).toList();
  }
}
