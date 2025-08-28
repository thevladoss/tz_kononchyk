import 'package:get_it/get_it.dart';
import '../core/network/dio_client.dart';
import '../data/datasources/coin_cap_remote_data_source.dart';
import '../data/repositories/asset_repository_impl.dart';
import '../domain/repositories/asset_repository.dart';
import '../domain/usecases/fetch_assets.dart';
import '../presentation/blocs/asset_bloc.dart';

final GetIt getIt = GetIt.instance;

Future<void> configureDependencies() async {
  getIt.registerLazySingleton<DioClient>(() => DioClient());

  getIt.registerLazySingleton<CoinCapRemoteDataSource>(
    () => CoinCapRemoteDataSource(getIt()),
  );

  getIt.registerLazySingleton<AssetRepository>(
    () => AssetRepositoryImpl(getIt()),
  );

  getIt.registerLazySingleton<FetchAssets>(
    () => FetchAssets(getIt()),
  );

  getIt.registerFactory<AssetBloc>(
    () => AssetBloc(getIt()),
  );
}
