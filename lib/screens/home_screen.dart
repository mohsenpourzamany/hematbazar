import 'package:flutter/material.dart';
import 'package:hematbazar/constants/colors.dart';
import 'package:hematbazar/widget/banner_slider.dart';
import 'package:hematbazar/widget/horizontal_category_list.dart';
import 'package:hematbazar/widget/product_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            const SliverToBoxAdapter(
              child: Padding(
                padding:
                    EdgeInsets.only(left: 25, right: 25, top: 5, bottom: 10),
                child: Row(
                  children: [
                    Image(
                      width: 38,
                      image: AssetImage('assets/image/HematBazar64.png'),
                    ),
                    Spacer(),
                    Text(
                      'جستجو محصولات',
                      style: TextStyle(
                        color: CostumColors.grayhb,
                        fontFamily: 'vazir',
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.search,
                      size: 33,
                    )
                  ],
                ),
              ),
            ),
            const SliverToBoxAdapter(
              child: BannerSlider(),
            ),
            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: Text(
                    'دسته بندی ها',
                    style: TextStyle(
                        fontFamily: 'vazir', fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: SizedBox(
                  height: 100,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return const Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: HorizontalCategoryList(),
                      );
                    },
                  ),
                ),
              ),
            ),
            const SliverToBoxAdapter(
              child: Padding(
                padding:
                    EdgeInsets.only(left: 20, right: 20, bottom: 7, top: 10),
                child: Row(
                  children: [
                    Icon(
                      Icons.arrow_circle_left_outlined,
                      color: CostumColors.redhb,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 3),
                      child: Text(
                        'مشاهده همه',
                        style: TextStyle(
                            fontFamily: 'vazir',
                            fontSize: 13,
                            color: CostumColors.redhb,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Spacer(),
                    Text(
                      'پرفروش ترین ها',
                      style: TextStyle(
                          fontFamily: 'vazir',
                          fontSize: 13,
                          color: CostumColors.graybhb,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: SizedBox(
                  height: 220,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 12,
                    itemBuilder: (context, index) {
                      return const Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: ProductItem(),
                      );
                    },
                  ),
                ),
              ),
            ),
            const SliverToBoxAdapter(
              child: Padding(
                padding:
                    EdgeInsets.only(left: 20, right: 20, bottom: 7, top: 20),
                child: Row(
                  children: [
                    Icon(
                      Icons.arrow_circle_left_outlined,
                      color: CostumColors.redhb,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 3),
                      child: Text(
                        'مشاهده همه',
                        style: TextStyle(
                            fontFamily: 'vazir',
                            fontSize: 13,
                            color: CostumColors.redhb,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Spacer(),
                    Text(
                      'پربازدید ترین ها',
                      style: TextStyle(
                          fontFamily: 'vazir',
                          fontSize: 13,
                          color: CostumColors.graybhb,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: SizedBox(
                  height: 220,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 12,
                    itemBuilder: (context, index) {
                      return const Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: ProductItem(),
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
