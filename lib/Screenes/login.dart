import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:market/Screenes/forgetPass.dart';
import 'package:market/Screenes/homePage.dart';
import 'package:market/Screenes/signup.dart';
import 'package:market/Widgets/customeButton.dart';
import 'package:market/Widgets/customeTextForm.dart';
import 'package:market/Widgets/customeTextForm2.dart';
import 'package:market/Widgets/logo&tesxt.dart';
import 'package:market/conestance.dart';
import 'package:get/get.dart';
import '../Widgets/customeTextButton.dart';

class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                logo_Text(x: 1,
                    text1: 'مرحبا بك مره اخري',
                    text2: 'يمكنك تسجيل الدخول الأن'),
                customeTextForm1(),
                SizedBox(
                  height: 8,
                ),
                customeTextForm2(text: 'كلمة المرور', image: '$unLock'),
                SizedBox(
                  height: 10,
                ),
                Align(
                    alignment: Alignment.topLeft,
                    child: customeTextButton(
                      text: ' نسيت كلمه المرور؟',
                      onTap: () {
                        Get.to(() => forgetpass());
                        print('xxxx');
                      },
                    )),
                SizedBox(
                  height: 15,
                ),
                customeButton(h:60,w: 343,
                    text: 'تسجيل الدخول',
                    onTap: () {
                      Get.offAll(() => homePage());
                    }),
                SizedBox(
                  height: 10,
                ),
                customeTextButton(
                  text: 'ليس لديك حساب ؟ تسجيل الأن',
                  onTap: () {
                    Get.to(() => singup());
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
