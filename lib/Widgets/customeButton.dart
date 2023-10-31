import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:market/Style.dart';

class customeButton extends StatelessWidget {
  customeButton({super.key, this.onTap, required this.text, required this.h, required this.w});
final String text;
  final void Function()? onTap;
final double h;
final double w;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: Color(0xff4C8613).withOpacity(0.9), borderRadius: BorderRadius.circular(20)),
        width: w,
        height: h,
        child: Center(
          child: Text(
            '$text',
            style: Styles.text16
                .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
