import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:market/Screenes/homePage.dart';
import 'package:market/Screenes/login.dart';
import 'package:market/Screenes/newPass.dart';
import 'package:market/Widgets/customeButton.dart';
import 'package:get/get.dart';
import 'package:market/Widgets/customeTextButton.dart';
import 'package:market/Widgets/logo&tesxt.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import '../Style.dart';
import '../conestance.dart';

class confirmPass extends StatelessWidget {
  confirmPass({super.key, required this.x});

  final int x;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              logo_Text(
                x: 0,
                text1: '${x == 0 ? 'تفعيل الحساب' : 'نسيت كلمة المرور'}',
                text2: 'أدخل الكود المكون من 4 أرقام المرسل علي رقم الجوال',
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 70,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Container(
                    margin: EdgeInsets.only(right: 5),
                    width: 80,
                    height: 70,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(
                        color: Color(0xffF3F3F3),
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                  ),
                  itemCount: 4,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              customeButton(h:60,w: 343,
                text: 'تأكيد الكود',
                onTap: () {
                  x != 0
                      ? Get.to(() => newPass())
                      : Get.offAll(() => homePage());
                },
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'لم تستلم الكود ؟',
                style: Styles.text16ligth,
              ),
              Text(
                'يمكنك إعادة إرسال الكود بعد',
                style: Styles.text16ligth,
              ),
              Container(
                padding: EdgeInsets.only(top: 15),
                height: 115,
                child: CircularPercentIndicator(
                  radius: 50.0,
                  lineWidth: 5.0,
                  percent: 0.3,
                  center: Text('1:05',
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff4C8613))),
                  progressColor: Color(0XFF4C8613),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 5, top: 10),
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0xff4C8613), width: 2),
                    borderRadius: BorderRadius.circular(20)),
                width: 150,
                child: Center(
                    child: Text(
                  'إعادة الإرسال',
                  style: Styles.text16,
                )),
                height: 50,
              ),
              SizedBox(
                height: 20,
              ),
              customeTextButton(
                text: 'لديك حساب بالفعل ؟ تسجيل الدخول',
                onTap: () {
                  Get.to(() => login());
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
