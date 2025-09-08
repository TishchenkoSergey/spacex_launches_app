part of 'launches_cubit.dart';

@freezed
/// State for rocket launches.
sealed class LaunchesState with _$LaunchesState {
  /// Creates a new [LaunchesState].
  const factory LaunchesState({
    @Default(0) int currentIndex,
    @Default([]) List<LaunchModel> launchesList,
    @Default([]) List<LaunchModel> sortedLaunchesList,
    @Default([]) List<RocketModel> rocketsInfo,
    @Default(null) String? rocketsError,
    @Default(null) String? launchesError,
  }) = _LaunchesState;

  const LaunchesState._();
}
