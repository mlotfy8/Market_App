import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:market/Screenes/productDetails.dart';
import 'package:market/Style.dart';
import 'package:get/get.dart';

import '../Screenes/salaa.dart';
class Categores extends StatelessWidget {
  const Categores({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            InkWell(onTap: (){Get.to(()=>productDetailes());},
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                width: 170,
                height: 160,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          'assetes/NoPath.png',
                        ),
                        fit: BoxFit.fill)),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,margin: EdgeInsets.only(left: 5),
              width: 70,
              height: 30,
              child: Center(
                  child: Text(
                    '-45%',
                    style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                  )),
              decoration: BoxDecoration(
                  color: Color(0xff4C8613),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  )),
            ),
          ],
        ),
        Text(
          '                            طماطم',
          style: Styles.text16,
        ),
        Text(
          '                   السعر / 1كجم',
          style: Styles.text16ligth,
        ),
        Row(
          children: [
            Container(margin: EdgeInsets.only(left: 10),
              decoration: BoxDecoration(color: Color(0xff61B80C),

                  borderRadius: BorderRadius.circular(10)),
              width: 40,child: Icon(FontAwesomeIcons.add,color: Colors.white,size: 20,),
              height: 40,
            ),
            Text(
              '56.رس ', textDirection: TextDirection.rtl,
              style: Styles.text16ligth,),
            Text(
              '45.رس ', textDirection: TextDirection.rtl,
              style: Styles.text16,),
          ],
        ),
        InkWell(onTap: (){Get.to(()=>salaa());},
          child: Container(margin: EdgeInsets.only(left: 20),
            decoration: BoxDecoration(color: Color(0xff61B80C),
                borderRadius: BorderRadius.circular(10)),
            width:100,
            height: 40,child: Center(child: Text('أضف للسلة',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),),
          ),
        ),
      ],
    );
  }
}
