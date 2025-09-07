import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

import 'package:domain/models/launch_model.dart';

import '../../../assets/constants.dart';

/// Card widget to display a single launch's information
class LaunchCardWidget extends StatelessWidget {
  /// Constructor for LaunchCardWidget
  const LaunchCardWidget({
    required this.launchInfo,
    super.key,
  });

  /// The launch data model containing all relevant information
  final LaunchModel launchInfo;

  @override
  Widget build(BuildContext context) {
    // Get theme and color scheme from context
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final colorScheme = theme.colorScheme;

    return InkWell(
      /// Open the wiki page URL when tapped
      onTap: () async {
        final url = launchInfo.wikiPage ?? kBaseUrl;
        final uri = Uri.parse(url);
        await launchUrl(uri, mode: LaunchMode.externalApplication);
      },
      borderRadius: BorderRadius.circular(kInterfaceDefaultCornerRadius),
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(vertical: kSmallMargin),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: colorScheme.secondary,
          borderRadius: BorderRadius.circular(kInterfaceDefaultCornerRadius),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Left section: date and time
            Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(launchInfo.formattedDate, style: textTheme.labelMedium),
                  const SizedBox(height: kVerticalShortestIntent),
                  Text(launchInfo.formattedTime, style: textTheme.labelSmall),
                ],
              ),
            ),
            const SizedBox(width: kVerticalShortIntent),

            /// Right section: mission name and launch site
            Expanded(
              flex: 7,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    launchInfo.missionName,
                    style: textTheme.titleMedium,
                    textHeightBehavior: const TextHeightBehavior(
                      applyHeightToFirstAscent: false,
                      applyHeightToLastDescent: false,
                    ),
                  ),
                  const SizedBox(height: kVerticalShortestIntent),
                  Text(
                    launchInfo.launchSiteName,
                    style: textTheme.labelSmall?.copyWith(
                      color: colorScheme.secondaryContainer.withValues(alpha: .8),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
