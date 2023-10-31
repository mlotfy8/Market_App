import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:market/Screenes/confirmeOrder.dart';
import 'package:market/Screenes/orderDetailes.dart';
import 'package:market/Style.dart';
import 'package:market/Widgets/containerIcon.dart';
import 'package:market/Widgets/customeButton.dart';
import 'package:get/get.dart';

class bottomSheet extends StatelessWidget {
  const bottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 1),
      height: 400,
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Text(
            'البطاقات المحفوظة',
            style: Styles.text16,
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Image.asset('assetes/Group 17570.png'),
              SizedBox(
                width: 10,
              ),
              Image.asset(
                'assetes/Group 889.png',
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              SizedBox(
                width: 170,
              ),
              Text(
                'إضافة بطاقة دفع',
                style: Styles.text16,
              ),
              containerIcon(
                  opacity: false,
                  image: 'assetes/Icon ionic-ios-add2.png',
                  r: 0,
                  color: Color(0xff4C8613).withOpacity(0.1))
            ],
          ),
          SizedBox(
            height: 40,
          ),
          customeButton(
            text: 'تأكيد الأختيار',
            h: 70,
            w: 350,
            onTap: () {
              Get.back();
              Get.bottomSheet(Container(
                padding: EdgeInsets.only(top: 10),
                width: double.infinity,
                height: 500,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),
                child: Column(
                  children: [
                    Image.asset('assetes/Group 17572.png'),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'شكرا لك لقد تم تنفيذ طلبك بنجاح',
                      style: Styles.text16,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'يمكنك متابعة حالة الطلب او الرجوع للرئسيية',
                      style: Styles.text16ligth,
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 25,
                        ),
                        border2(
                            w: 150,
                            h: 60,
                            widget1: Text(
                              'الرئيسية',
                              style: Styles.text16,
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        customeButton(
                          text: 'طلباتي',
                          h: 60,
                          w: 150,
                          onTap: () {
                            Get.to(() => orderDetailes());
                          },
                        )
                      ],
                    )
                  ],
                ),
              ));
            },
          )
        ],
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40), topRight: Radius.circular(40))),
    );
  }
}
