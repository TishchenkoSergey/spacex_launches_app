import 'package:flutter/material.dart';

import 'package:domain/domain.dart';

import '../../../assets/constants.dart';

/// Custom slider widget to display a list of rockets with a page view and indicators
class CustomSlider extends StatefulWidget {
  /// Constructor for CustomSlider
  const CustomSlider({
    required this.rocketsInfo,
    required this.pageNumber,
    required this.onChanged,
    super.key,
  });

  /// List of rocket models to display
  final List<RocketModel> rocketsInfo;

  /// Currently selected page index
  final int pageNumber;

  /// Callback function when page changes
  final ValueChanged<int> onChanged;

  @override
  State<CustomSlider> createState() => _CustomSliderState();
}

/// State class for CustomSlider
class _CustomSliderState extends State<CustomSlider> {
  /// PageController to manage the PageView
  final PageController _controller = PageController(viewportFraction: kViewportFraction);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// PageView showing rocket images with scaling animation
        Container(
          height: MediaQuery.of(context).size.height / 5 + 20,
          width: double.infinity,
          margin: const EdgeInsets.symmetric(vertical: kDefaultMargin),
          child: PageView.builder(
            itemCount: widget.rocketsInfo.length,
            controller: _controller,
            onPageChanged: (index) => widget.onChanged(index),
            itemBuilder: (context, index) {
              /// Determine scale for the current page
              final scale = widget.pageNumber == index ? kMaxScale : kMimScale;

              /// Tween animation for smooth scaling
              return TweenAnimationBuilder(
                duration: kDefaultDuration,
                curve: Curves.easeOut,
                tween: Tween(begin: scale, end: scale),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(kInterfaceDefaultCornerRadius),
                  child: SizedBox.expand(
                    child: Image.network(
                      widget.rocketsInfo[index].image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                builder: (context, value, child) {
                  /// Apply scale transformation
                  return Transform.scale(scale: value, child: child);
                },
              );
            },
          ),
        ),

        /// Row of indicators showing current page
        SizedBox(
          height: 10,
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              widget.rocketsInfo.length,
                  (index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: kSmallPadding),
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(kInterfaceDefaultCornerRadius),
                    border: Border.all(color: Colors.white),
                    color: widget.pageNumber == index ? Colors.white : Colors.transparent,
                  ),
                  child: const SizedBox(
                    height: kHorizontalShortIntent,
                    width: kVerticalShortIntent,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
