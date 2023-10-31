import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:market/Widgets/customeButton.dart';

import '../Style.dart';
import '../Widgets/containerIcon.dart';
import '../bottomSheet.dart';

class confirmeOrder extends StatelessWidget {
  const confirmeOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          color: Colors.white,
          padding: EdgeInsets.symmetric(
            horizontal: 10,
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 107,
                    ),
                    Text(
                      'إتمام الطلب',
                      style: Styles.text16.copyWith(fontSize: 20),
                    ),
                    SizedBox(
                      width: 55,
                    ),
                    containerIcon(opacity: true,
                      color: Color(0xff4C8613).withOpacity(0.1),
                      image: 'assetes/Arrow - Right-1.png',
                      r: 0,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Column(
                    children: [
                      Text(
                        '                                                             الإسم : محمد',
                        style: Styles.text16,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '                                               الجوال : 05068285914',
                        style: Styles.text16,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          containerIcon(opacity: false,
                              image: 'assetes/Icon ionic-ios-add2.png',
                              r: 0,
                              color: Color(0xff4C8613).withOpacity(0.1)),
                          Text(
                            'اختر عنوان التوصيل',
                            style: Styles.text16,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  margin: EdgeInsets.only(top: 10, bottom: 15),
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset('assetes/Stroke 1.png'),
                      Text(
                        'المنزل : 119 طريق الملك عبدالعزيز',
                        style: Styles.text16,
                      )
                    ],
                  ),
                  height: 60,
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0xff4C8613), width: 1),
                      borderRadius: BorderRadius.circular(30)),
                ),
                Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      'تحديد وقت التوصيل',
                      style: Styles.text16,
                    )),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    border(
                      w: 150,
                      h: 50,
                      widget1: Image.asset('assetes/Calendar.png'),
                      widget2: Text(
                        'اختر الوقت',
                        style: Styles.text16,
                      ),
                      w2: 10,
                    ),
                    border(
                        w: 180,
                        h: 50,
                        widget1: Image.asset('assetes/timer.png'),
                        widget2: Text(
                          'اختر اليوم والتاريخ',
                          style: Styles.text16,
                        ),
                        w2: 15)
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      'ملاحظات وتعليمات',
                      style: Styles.text16,
                    )),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding:  EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                  child: SizedBox(
                    width: double.infinity,
                    height: 150,
                    child:  TextFormField(
                        maxLines: 6,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: Color(0xffE5E5E5)),
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    ),
                ),
                SizedBox(
                  height: 10,
                ),
                Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      'اختر طريقة الدفع',
                      style: Styles.text16,
                    )),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    border2(
                      w: 100,
                      h: 70,
                      widget1: SizedBox(width: 60,height: 60,
                        child: SvgPicture.asset(
                          'assetes/Group 1.svg',
                          width: 60,
                          height: 60,
                          
                        ),
                      ),
                    ),
                    border2(
                      w: 100,
                      h: 70,
                      widget1: SvgPicture.asset(
                        'assetes/visa.svg',
                        width: 90,
                        height: 60,
                      ),
                    ),
                    border(
                        w: 120,
                        h: 70,
                        widget1: Text(
                          'كاش',
                          style: Styles.text16,
                        ),
                        widget2: SvgPicture.asset('assetes/kash.svg'),
                        w2: 30)
                  ],
                ),
                SizedBox(height: 5,),
                Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      'ملخص الطلب',
                      style: Styles.text16,
                    )),
                Container(child: Stack(children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    width: double.infinity,
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffF3F8EE),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 60,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '-40 ر.س',
                              style: Styles.text16.copyWith(fontSize: 15),
                            ),
                            Text(
                              'الخصم',
                              style: Styles.text16.copyWith(fontSize: 15),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '180 ر.س',
                              style: Styles.text16.copyWith(fontSize: 17),
                            ),
                            Text(
                              'المجموع',
                              style: Styles.text16.copyWith(fontSize: 17),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  customeButton(text: 'إنهاء الطلب', h: 60, w: 350,onTap: (){Get.bottomSheet(
                      bottomSheet()
                  );},),
                ],),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class border extends StatelessWidget {
  const border(
      {super.key,
      required this.w,
      required this.h,
      required this.widget1,
      required this.widget2,
      required this.w2});

  final double w;
  final double w2;
  final double h;
  final Widget widget1;
  final Widget? widget2;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: w,
      height: h,
      child: Row(
        children: [
          SizedBox(
            width: 7,
          ),
          widget1,
          SizedBox(
            width: w2,
          ),
          widget2!
        ],
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Color(0xff363853), width: 0.4)),
    );
  }
}

class border2 extends StatelessWidget {
  const border2(
      {super.key, required this.w, required this.h, required this.widget1});

  final double w;
  final double h;
  final Widget widget1;

  @override
  Widget build(BuildContext context) {
    return Container(padding: EdgeInsets.all(5),
      width: w,
      height: h,
      child: Center(child: widget1),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Color(0xff363853), width: 0.4)),
    );
  }
}
