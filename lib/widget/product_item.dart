import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 216,
      width: 160,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 215, 215, 215),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Expanded(child: Container()),
              const Image(
                width: 70,
                image: AssetImage('assets/image/iphone.png'),
              ),
              const Positioned(
                top: 0,
                right: 10,
                child: SizedBox(
                  width: 35,
                  height: 35,
                  child: Image(
                      image: AssetImage('assets/icon/active_fav_product.png')),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 10,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                    child: Text(
                      '4%',
                      style: TextStyle(
                          color: Color(0xffffffff),
                          fontFamily: 'vazir',
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              )
            ],
          ),
          const Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Padding(
                padding: EdgeInsets.only(bottom: 7, right: 7),
                child: Text(
                  'ایفون ۱۵ پرومکس',
                  style: TextStyle(
                      fontFamily: 'vazir',
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Container(
                height: 50,
                decoration: const BoxDecoration(
                  color: Color(0xff004eff),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xff004eff),
                      blurRadius: 25,
                      spreadRadius: -12,
                      offset: Offset(0.0, 15),
                    ),
                  ],
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 6),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'تومان',
                        style: TextStyle(
                            color: Color(0xffffffff),
                            fontFamily: 'vazir',
                            fontSize: 12,
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '12.500.000',
                            style: TextStyle(
                                color: Color(0xffffffff),
                                fontFamily: 'vazir',
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                decoration: TextDecoration.lineThrough),
                          ),
                          Text(
                            '11.500.000',
                            style: TextStyle(
                                color: Color(0xffffffff),
                                fontFamily: 'vazir',
                                fontSize: 12,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      SizedBox(
                        width: 35,
                        child: Image(
                          image: AssetImage('assets/icon/arrows.png'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
