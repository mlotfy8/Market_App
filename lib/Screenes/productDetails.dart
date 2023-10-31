import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:market/Screenes/salaa.dart';
import 'package:market/Style.dart';
import 'package:market/Widgets/containerIcon.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:get/get.dart';

class productDetailes extends StatelessWidget {
  productDetailes({super.key});

  @override
  final PageController pageController = PageController(initialPage: 2);

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    width: double.infinity,
                    height: 300,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assetes/NoPath.png'),
                            fit: BoxFit.fill)),
                  ),
                  Container(
                    width: double.infinity,
                    height: 130,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                          Colors.white,
                          Colors.white.withOpacity(0.2)
                        ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                     containerIcon(opacity: true,image: 'assetes/Icon ionic-ios-heart-empty.png',r: 0,color: Color(0xff4C8613).withOpacity(0.1),),
                    containerIcon(image: 'assetes/Arrow - Right-1.png',r: 20,color: Color(0xff4C8613).withOpacity(0.1),opacity: true,)
                    ],
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: 290, left: 160),
                      child: SmoothPageIndicator(
                        controller: pageController,
                        count: 5,
                        effect: WormEffect(
                            dotWidth: 7,
                            dotHeight: 7,
                            activeDotColor: Colors.white,
                            type: WormType.underground,
                            radius: 10,
                            spacing: 3,
                            dotColor: Colors.transparent.withOpacity(0.2)),
                      ))
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    '56.رس ',
                    textDirection: TextDirection.rtl,
                    style: Styles.text16ligth.copyWith(fontSize: 12),
                  ),
                  Text(
                    '45.رس ',
                    textDirection: TextDirection.rtl,
                    style: Styles.text16,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    '40%',
                    style: TextStyle(color: Colors.red, fontSize: 13),
                  ),
                  SizedBox(
                    width: 140,
                  ),
                  Text(
                    'طماطم  ',
                    style: Styles.text16.copyWith(fontSize: 20),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    padding: EdgeInsets.only(left: 5, right: 5),
                    width: 130,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xff4C8613).withOpacity(0.3),
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image.asset('assetes/Icon ionic-ios-add.png'),
                        ),
                        Text(
                          '       5 ',
                          style: Styles.text16,
                        ),
                        Container(
                          width: 30,
                          margin: EdgeInsets.only(left: 20),
                          height: 30,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image.asset('assetes/Icon ionic-ios-add2.png'),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'السعر / 1كجم     ',
                    style: Styles.text16ligth,
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    '56638  ',
                    style: Styles.text16ligth,
                  ),
                  Text(
                    'كود المنتج     ',
                    style: Styles.text16,
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    ' تفاصيل المنتج     ',
                    style: Styles.text16,
                  )),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 90,
                child: Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(
                    'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق.',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.normal,
                    ),
                    textDirection: TextDirection.rtl,
                  ),
                )),
              ),
              SizedBox(
                height: 8,
              ),
              Align(
                alignment: Alignment.topRight,
                child: Text(
                  'التقييمات   ',
                  style: Styles.text16,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset('assetes/Group 1822.png'),
                  Text(
                    '    محمد علي   ',
                    style: Styles.text16.copyWith(color: Colors.black),
                  )
                ],
              ),
              SizedBox(
                height: 90,
                child: Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(
                    'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق.',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                    ),
                    textDirection: TextDirection.rtl,
                  ),
                )),
              ),
              Container(
                alignment: Alignment.bottomCenter,
                width: double.infinity,
                margin: EdgeInsets.only(top: 16.3),
                padding: EdgeInsets.only(left: 15, right: 15),
                height: 80,
                color: Color(0xff4C8613),
                child: Center(
                  child: Row(
                    children: [
                      Text(
                        ' ر.س',
                        style: Styles.text16.copyWith(color: Colors.white),
                      ),
                      Text(
                        '225',
                        style: Styles.text16.copyWith(color: Colors.white),
                      ),
                      SizedBox(
                        width: 99,
                      ),
                      Text(
                        'إضافة إلي السلة    ',
                        style: Styles.text16.copyWith(color: Colors.white),
                      ),
                      InkWell(
                        onTap: () {
                          Get.to(() => salaa());
                        },
                        child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xff6AA431),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            width: 40,
                            height: 40,
                            child: Image.asset('assetes/Shopping Cart-1.png')),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
