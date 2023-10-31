import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:market/Screenes/homePage.dart';
import 'package:market/Screenes/login.dart';
import 'package:market/Widgets/customeButton.dart';
import 'package:market/Widgets/customeTextButton.dart';
import 'package:market/Widgets/customeTextForm.dart';
import 'package:market/Widgets/customeTextForm2.dart';
import 'package:get/get.dart';
import '../Style.dart';
import '../Widgets/logo&tesxt.dart';
import '../conestance.dart';

class singup extends StatelessWidget {
  const singup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: SafeArea(
          child: SingleChildScrollView(scrollDirection: Axis.vertical,
            child: Column(
              children: [
                logo_Text(text1: 'مرحبا بك مرة أخرى', text2: 'يمكنك تسجيل حساب جديد الأن',x: 1),

                customeTextForm2(text: 'اسم المستخدم ', image: '$user'),
                SizedBox(
                  height: 8,
                ),
                customeTextForm1(),
                SizedBox(
                  height: 8,
                ),
                customeTextForm2(text: 'المدينه ', image: '$flag2'),
                SizedBox(
                  height: 8,
                ),
                customeTextForm2(text: ' كلمه المرور ', image: '$unLock'),
                SizedBox(
                  height: 8,
                ),
                customeTextForm2(text: '  كلمه المرور ', image: '$unLock'),
                SizedBox(
                  height: 8,
                ),
                customeButton(h:60,w: 343,
                  text: 'تسجيل',
                  onTap: () {
                    Get.offAll(() => homePage());
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                customeTextButton(onTap: (){Get.to(()=>login());},text: 'لديك حساب بالفعل ؟ تسجيل الدخول')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
