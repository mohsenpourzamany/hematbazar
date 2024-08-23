import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BannerSlider extends StatefulWidget {
  const BannerSlider({super.key});

  @override
  State<BannerSlider> createState() => _BannerSliderState();
}

class _BannerSliderState extends State<BannerSlider> {
  @override
  Widget build(BuildContext context) {
    var controller = PageController(viewportFraction: 0.8);
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        SizedBox(
          height: 160,
          child: PageView.builder(
            controller: controller,
            itemCount: 4,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  height: 160,
                  color: Colors.amber,
                ),
              );
            },
          ),
        ),
        SmoothPageIndicator(
          controller: controller,
          count: 4,
          effect: const ExpandingDotsEffect(
              dotHeight: 10, dotWidth: 10, expansionFactor: 5),
        ),
      ],
    );
  }
}
