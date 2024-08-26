import 'package:flutter/material.dart';

class HorizontalCategoryList extends StatelessWidget {
  const HorizontalCategoryList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      // children: [
      //   BannerSlider(),
      //   HorizontalCategoryList(),
      // ],
      children: [
        Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Container(
              height: 56,
              width: 56,
              decoration: ShapeDecoration(
                  color: Colors.redAccent,
                  shadows: const [
                    BoxShadow(
                        color: Colors.redAccent,
                        blurRadius: 40,
                        spreadRadius: -10,
                        offset: Offset(0.0, 10))
                  ],
                  shape: ContinuousRectangleBorder(
                      borderRadius: BorderRadius.circular(40))),
            ),
            const Icon(
              Icons.mouse,
              color: Colors.white,
              size: 26,
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        const Text('test'),
      ],
    );
  }
}
