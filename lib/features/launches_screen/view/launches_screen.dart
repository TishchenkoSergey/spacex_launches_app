import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:spacex_launches_app/features/features.dart';

import '../../../assets/constants.dart';

/// Screen displaying SpaceX launches
class LaunchesScreen extends StatelessWidget {
  /// Constructor
  const LaunchesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    /// Get current text theme from the context
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      /// App bar with title
      appBar: AppBar(
        title: Text('SpaceX Launches', style: textTheme.titleLarge),
      ),
      /// Main body wrapped in BlocBuilder to listen to LaunchesCubit state
      body: BlocBuilder<LaunchesCubit, LaunchesState>(
        builder: (context, state) {
          return Container(
            padding: const EdgeInsets.only(top: kLargePadding),
            color: Colors.black,
            child: Column(
              children: [
                /// Show error message if rocketsError exists, else show loading or slider
                state.rocketsError != null
                    ? ErrorMessageText(
                  errorMessage: state.launchesError.toString(),
                  padding: kLargePadding,
                )
                    : state.rocketsInfo.isEmpty
                    ? const CircularProgressIndicator()
                    : CustomSlider(
                  rocketsInfo: state.rocketsInfo,
                  pageNumber: state.currentIndex,
                  onChanged: context.read<LaunchesCubit>().setSliderIndex,
                ),
                const SizedBox(height: kVerticalLongInset),
                /// Expanded section for launches list
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(kDefaultPadding),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        /// Section title
                        Text('Missions', style: textTheme.titleLarge),
                        const SizedBox(height: kVerticalIntent),
                        /// Show error message if launchesError exists, else show list or loading
                        state.launchesError != null
                            ? ErrorMessageText(
                          errorMessage: state.launchesError.toString(),
                        )
                            : Expanded(
                          child: state.sortedLaunchesList.isEmpty
                              ? const Center(child: CircularProgressIndicator())
                              : ListView.builder(
                            itemCount: state.sortedLaunchesList.length,
                            itemBuilder: (context, index) =>
                                LaunchCardWidget(
                                    launchInfo:
                                    state.sortedLaunchesList[index]),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
