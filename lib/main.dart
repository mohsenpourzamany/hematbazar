import 'package:flutter/material.dart';
import 'package:hematbazar/screens/home_screen.dart';
import 'package:hematbazar/widget/horizontal_category_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HorizontalCategoryMain extends StatelessWidget {
  const HorizontalCategoryMain({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: ((context, index) {
          return const Padding(
            padding: EdgeInsets.only(left: 20),
            child: HorizontalCategoryList(),
          );
        }),
      ),
    );
  }
}
