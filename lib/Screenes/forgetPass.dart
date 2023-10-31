import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:market/Screenes/confirmPass.dart';
import 'package:market/Screenes/homePage.dart';
import 'package:market/Screenes/login.dart';
import 'package:market/Widgets/customeButton.dart';
import 'package:market/Widgets/customeTextButton.dart';
import 'package:market/Widgets/logo&tesxt.dart';
import 'package:get/get.dart';
import '../Widgets/customeTextForm.dart';

class forgetpass extends StatelessWidget {
  const forgetpass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              logo_Text(x: 1,text1: 'نسيت كلمة المرور', text2: 'أدخل رقم الجوال المرتبط بحسابك'),
              customeTextForm1(),
              SizedBox(
                height: 20,
              ),
              customeButton(h:60,w: 343,
                text: 'تأكيد رقم الجوال',
                onTap: () {
                  Get.to(() => confirmPass(x: 1,));
                },
              ),SizedBox(height: 30,),
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
