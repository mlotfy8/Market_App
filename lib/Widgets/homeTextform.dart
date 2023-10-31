import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Style.dart';
import '../conestance.dart';

class homeTextForm extends StatelessWidget {
  const homeTextForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextFormField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Color(0xff707070).withOpacity(0.1),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.circular(15),
            ),
            suffixIcon:
                Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              Text(
                ' ابحث عن ماتريد؟  ',
                style: Styles.text15regular,
              ),
              Image.asset('$search'),
              SizedBox(
                width: 10,
              ),
            ]),
          ),
        ));
  }
}
