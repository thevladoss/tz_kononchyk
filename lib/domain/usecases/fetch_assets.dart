import '../entities/asset.dart';
import '../repositories/asset_repository.dart';

class FetchAssets {
  final AssetRepository repository;

  FetchAssets(this.repository);

  Future<List<Asset>> call({required int limit, required int offset}) {
    return repository.getAssets(limit: limit, offset: offset);
  }
}
