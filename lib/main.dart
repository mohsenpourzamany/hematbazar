import 'package:flutter/material.dart';
import 'package:hematbazar/widget/product_item.dart';
// import 'package:hematbazar/widget/horizontal_category_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: SafeArea(
            child: Center(
              child: ProductItem(),
            ),
            // child: Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 44),
            //   child: ListView.builder(
            //     scrollDirection: Axis.horizontal,
            //     itemCount: 10,
            //     itemBuilder: (context, index) {
            //       return const Padding(
            //         padding: EdgeInsets.only(left: 20),
            //         child: HorizontalCategoryList(),
            //       );
            //     },
            //   ),
            // ),
          ),
        ),
      ),
    );
  }
}
