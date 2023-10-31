import 'package:flutter/cupertino.dart';

import '../Style.dart';
import '../conestance.dart';

class logo_Text extends StatelessWidget {
  const logo_Text({super.key, required this.text1, required this.text2, required this.x});
final String text1;
  final String text2;
  final int x;
  @override
  Widget build(BuildContext context) {
    return                 SizedBox(
      width: double.infinity,
      height: 240,
      child: Stack(alignment:AlignmentDirectional.topStart ,
        children: [
          Align(alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.only(top: 150),
              child: Text(
                '$text1',
                style: Styles.text16,
              ),
            ),
          ),
          Align(alignment: Alignment.topRight,
            child: Padding(
              padding:  EdgeInsets.only(top:180),
              child: Text(
                '$text2',
                style: Styles.text16ligth,
              ),
            ),
          ),
          x==0? Padding(
            padding: const EdgeInsets.only(top: 210.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'تغير رقم الجوال',
                  style: Styles.text16,
                ),
                Text(
                  '   9660548745+',
                  style: Styles.text16ligth,
                ),
              ],
            ),
          ):Text(''),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Image.asset(
                '$logo',width: 300,height: 220,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
