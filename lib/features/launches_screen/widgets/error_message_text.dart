import 'package:flutter/material.dart';

import '../../../assets/constants.dart';

/// Widget to display an error message with optional padding
class ErrorMessageText extends StatelessWidget {
  /// Constructor for ErrorMessageText
  const ErrorMessageText({
    required this.errorMessage,
    this.padding = kDefaultPadding,
    super.key,
  });

  /// The error message text to display
  final String errorMessage;

  /// Padding around the error message
  final double padding;

  @override
  Widget build(BuildContext context) {
    /// Get current theme and text styles
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final colorScheme = theme.colorScheme;

    return Padding(
      /// Apply padding around the text
      padding: EdgeInsets.all(padding),
      /// Display the error message in error color
      child: Text(
        errorMessage,
        style: textTheme.labelMedium!.copyWith(color: colorScheme.error),
      ),
    );
  }
}
