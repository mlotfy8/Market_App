import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:market/Style.dart';

import '../conestance.dart';

class customeTextForm2 extends StatelessWidget {
  const customeTextForm2({super.key, required this.text, required this.image});
final String text;
final String image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
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
                ' $text  ',
                style: Styles.text15regular,
              ),
              Image.asset('$image'),
              SizedBox(
                width: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
/*
  Container(
          width: 73,
          height: 60,
          decoration: BoxDecoration(
              color: Color(0xffF3F3F3),
              borderRadius: BorderRadius.circular(20)),
          child: Container(decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20)),width: 70,height: 55,),
        )
 */
