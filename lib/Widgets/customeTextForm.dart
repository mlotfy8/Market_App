import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:market/Style.dart';

import '../conestance.dart';

class customeTextForm1 extends StatelessWidget {
  const customeTextForm1({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(margin: EdgeInsets.zero,padding: EdgeInsets.zero,
            width: 265,
            height: 60,
            child: TextFormField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Color(0xffF3F3F3))),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                suffixIcon: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'رقم الجوال  ',
                      style: Styles.text15regular,
                    ),
                    Image.asset('$phone6'),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
            )),
        SizedBox(
          width: 5,
        ),
        Container(
          width: 70, // عرض المربع
          height: 60, // ارتفاع المربع
          decoration: BoxDecoration(
            color: Colors.transparent, // لون الخلفية
            border: Border.all(
              color: Color(0xffF3F3F3), // لون الحدود
              width: 2.0, // عرض الحدود
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(10.0), // قوس حول الزوايا لإعطاء الشكل المربع
            ),
          ),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(
                  top: 2,
                ),
                width: 50,
                height: 30,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          '$flag',
                        ),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(10)),
              ),
              Text(
                '+966',
                style: Styles.text16,
              )
            ],
          ),
        )
      ],
    );
  }
}

