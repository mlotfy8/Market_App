import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:market/Screenes/login.dart';
import 'package:market/conestance.dart';
class splashScreen extends StatefulWidget {
  const splashScreen({super.key});

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(color: Colors.white,
        child:Image.asset('$logo',width: 250,height: 300,),
      ),
    );
  }

  @override
  void initState() {
    Timer(
      Duration(seconds: 3),
      () => Get.to(()=>login()),
    );
    super.initState();
  }
}
