import 'package:bloc/bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:domain/domain.dart';

part 'launches_state.dart';

part 'launches_cubit.freezed.dart';

/// Manages rocket launches state.
class LaunchesCubit extends Cubit<LaunchesState> {
  /// Creates [LaunchesCubit] with required use cases.
  LaunchesCubit(this._getLaunchesListUseCase, this._getRocketsInfoUseCase)
      : super(const LaunchesState()) {
    _init(); // Initial data load
  }

  final GetLaunchesListUseCase _getLaunchesListUseCase;
  final GetRocketsInfoUseCase _getRocketsInfoUseCase;

  /// Loads launches and rocket info on start.
  Future<void> _init() async {
    await _getLaunchesList();
    await _getRocketsInfo();
    setSliderIndex(state.currentIndex);
  }

  /// Fetches all launches.
  Future<void> _getLaunchesList() async {
    try {
      final launchesList = await _getLaunchesListUseCase.execute();
      emit(state.copyWith(launchesList: launchesList));
    } catch (e) {
      emit(state.copyWith(launchesError: e.toString()));
    }
  }

  /// Fetches rocket info.
  Future<void> _getRocketsInfo() async {
    try {
      final rocketsInfo = await _getRocketsInfoUseCase.execute();
      emit(state.copyWith(rocketsInfo: rocketsInfo));
    } catch (e) {
      emit(state.copyWith(rocketsError: e.toString()));
    }
  }

  /// Updates slider index and filters launches for selected rocket.
  void setSliderIndex(int index) {
    try {
      final activeRocketId = state.rocketsInfo[index].rocketId;
      final launchesList = state.launchesList
          .where((item) => item.rocketID == activeRocketId)
          .toList();

      emit(state.copyWith(
        currentIndex: index,
        sortedLaunchesList: launchesList,
        launchesError: null,
      ));

      if (launchesList.isEmpty) {
        throw Exception('No scheduled launches found for the requested rocket.');
      }
    } catch (e) {
      emit(state.copyWith(launchesError: e.toString()));
    }
  }
}
