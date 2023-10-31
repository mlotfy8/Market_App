import 'package:flutter/cupertino.dart';
import 'package:market/Style.dart';
import 'package:market/conestance.dart';

class customeAppBar extends StatelessWidget {
  const customeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5),
      height: 80,
      child: Row(
        children: [
          Container(
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xff4C8613).withOpacity(0.1),
            ),
            height: 50,
            child: Image.asset('$lock'),
          ),
          SizedBox(height:54 ,
            child: Padding(
              padding: const EdgeInsets.only( left: 50),
              child: Column(
                children: [
                  Text(
                    'التوصيل إلى',
                    style: Styles.text16,
                  ),
                  Text(
                    'شارع الملك فهد - جدة',
                    style: Styles.text16regular.copyWith(fontSize: 14),
                  ),
                ],
              ),
            ),
          ),SizedBox(width: 29,),
          Text(
            'سلة ثمار',
            style: Styles.text16,
          ),
          Image.asset(
            '$logo',
            width: 30,
            height: 50,
          ),
        ],
      ),
    );
  }
}
