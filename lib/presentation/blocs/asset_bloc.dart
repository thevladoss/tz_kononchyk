import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/usecases/fetch_assets.dart';
import 'asset_event.dart';
import 'asset_state.dart';

class AssetBloc extends Bloc<AssetEvent, AssetState> {
  final FetchAssets fetchAssets;
  static const int _limit = 15;
  int _currentOffset = 0;

  AssetBloc(this.fetchAssets) : super(const AssetState.initial()) {
    on<LoadAssets>(_onLoadAssets);
    on<LoadMoreAssets>(_onLoadMoreAssets);
  }

  Future<void> _onLoadAssets(LoadAssets event, Emitter<AssetState> emit) async {
    emit(const AssetState.loading());
    try {
      _currentOffset = 0;
      final assets = await fetchAssets(limit: _limit, offset: _currentOffset);
      _currentOffset += _limit;

      emit(AssetState.loaded(
        assets: assets,
        hasReachedMax: assets.length < _limit,
      ));
    } catch (e) {
      emit(AssetState.error(e.toString()));
    }
  }

  Future<void> _onLoadMoreAssets(
      LoadMoreAssets event, Emitter<AssetState> emit) async {
    final currentState = state;
    if (currentState is AssetLoaded &&
        !currentState.hasReachedMax &&
        !currentState.isLoadingMore) {
      emit(currentState.copyWith(isLoadingMore: true));

      try {
        final newAssets =
            await fetchAssets(limit: _limit, offset: _currentOffset);
        _currentOffset += _limit;

        emit(AssetState.loaded(
          assets: [...currentState.assets, ...newAssets],
          hasReachedMax: newAssets.length < _limit,
          isLoadingMore: false,
        ));
      } catch (e) {
        emit(currentState.copyWith(isLoadingMore: false));
      }
    }
  }
}
