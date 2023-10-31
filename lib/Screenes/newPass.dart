import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:market/Screenes/login.dart';
import 'package:market/Style.dart';
import 'package:market/Widgets/customeButton.dart';
import 'package:market/Widgets/customeTextButton.dart';
import 'package:market/Widgets/customeTextForm2.dart';
import 'package:get/get.dart';
import 'package:market/Widgets/logo&tesxt.dart';
import '../conestance.dart';
import 'activeAcount.dart';

class newPass extends StatelessWidget {
  const newPass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              logo_Text(text1: 'نسيت كلمة المرور',
                  text2: 'أدخل كلمة المرور الجديدة',
                  x: 1),
              customeTextForm2(text: 'كلمة المرور', image: '$unLock'),
              SizedBox(
                height: 10,
              ),
              customeTextForm2(text: 'كلمة المرور', image: '$unLock'),
              SizedBox(
                height: 10,
              ),
              customeButton(h:60,w: 343,
                text: 'تغيير كلمة المرور',
                onTap: () {
                  Get.to(() => activeAcount());
                },
              ),
              SizedBox(
                height: 10,
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
