import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:market/Style.dart';

import 'containerIcon.dart';

class salaCategores extends StatelessWidget {
  const salaCategores({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: EdgeInsets.only(top: 10),
      child: Row(
        children: [
          containerIcon(
              opacity: true,
              image: 'assetes/Trash-2.png',
              color: Color(0xffFF0000).withOpacity(0.2),
              r: 0),
          SizedBox(
            width: 80,
          ),
          Column(
            children: [
              Text(
                'طماطم',
                style: Styles.text16,
              ),
              Text(
                '45ر.س',
                style: Styles.text16,
              ),
              Container(
                padding: EdgeInsets.only(left: 5, right: 5),
                width: 100,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xff4C8613).withOpacity(0.3),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Image.asset('assetes/Icon ionic-ios-add.png'),
                    ),
                    Text(
                      '     5 ',
                      style: Styles.text16,
                    ),
                    Container(
                      width: 20,
                      margin: EdgeInsets.only(left: 15),
                      height: 20,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Image.asset('assetes/Icon ionic-ios-add2.png'),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.zero,
            width: 100,
            margin: EdgeInsets.only(left: 10),
            height: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assetes/NoPath.png'), fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(20)),
          ),
        ],
      ),
    );
  }
}
