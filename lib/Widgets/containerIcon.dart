import 'package:flutter/cupertino.dart';

class containerIcon extends StatelessWidget {
  const containerIcon({super.key, required this.image, required this.r, required this.color, required this.opacity});
final String image;
final double r;
final Color color;
final bool opacity;
  @override
  Widget build(BuildContext context) {
    return  Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Image.asset(
            '$image'),
        margin: EdgeInsets.only(top: 10, left: 20,right: r));
  }
}
