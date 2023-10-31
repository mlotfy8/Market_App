import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:market/Style.dart';
import 'package:market/Widgets/containerIcon.dart';
import 'package:market/Widgets/customeButton.dart';

class orderDetailes extends StatelessWidget {
  const orderDetailes({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        color: Colors.white,
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: 116,
                ),
                Text('تفاصيل الطلب', style: Styles.text16),
                SizedBox(
                  width: 50,
                ),
                containerIcon(
                  image: 'assetes/Arrow - Right-1.png',
                  color: Color(0xff4C8613).withOpacity(0.1),
                  opacity: false,
                  r: 0,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 120,
                  height: 40,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xff4C8613).withOpacity(0.1),
                  ),
                  child: Text(
                    'بإنتظار الموافقة',
                    style: Styles.text16.copyWith(fontSize: 14),
                  ),
                ),
                Text(
                  'طلب #4587',
                  style: Styles.text16,
                )
              ],
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'ر.س 180',
                  style: Styles.text16,
                ),
                Text(
                  'يونيو,2021,27',
                  style: Styles.text16ligth,
                )
              ],
            ),
            //assetes/Rectangle 3495.png
            Row(
              children: [
                containerIcon(
                  image: 'assetes/Arrow - Right 2.png',
                  color: Color(0xff4C8613).withOpacity(0.1),
                  opacity: false,
                  r: 0,
                ),
                SizedBox(
                  width: 150,
                ),
                Container(
                  alignment: Alignment.center,
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    color: Color(0xff4C8613).withOpacity(0.1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    '+2',
                    style: Styles.text16,
                  ),
                ),
                containerImage(
                  image: 'assetes/waterm.png',
                  color: Colors.transparent,
                ),
                containerImage(
                  image: 'assetes/carrot.png',
                  color: Colors.transparent,
                ),
                containerImage(
                  image: 'assetes/Rectangle 3495.png',
                  color: Colors.transparent,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.topRight,
              child: Text(
                'عنوان التوصيل',
                style: Styles.text16,
              ),
            ),
            Container(
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          '                                              المنزل',
                          style: Styles.text16,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '                                                         شقة 40',
                          style: Styles.text16ligth
                              .copyWith(fontSize: 14, color: Color(0XFF999797)),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'شارع العليا الرياض 12521السعودية',
                          style: Styles.text16ligth,
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Image.asset('assetes/Group 932.png'),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Align(
                alignment: Alignment.topRight,
                child: Text(
                  'ملخص الطلب',
                  style: Styles.text16,
                )),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.all(10),
              width: double.infinity,
              height: 180,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xffF3F8EE),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '180 ر.س',
                        style: Styles.text16.copyWith(fontSize: 15),
                      ),
                      Text(
                        'إجمالي المنتجات',
                        style: Styles.text16.copyWith(fontSize: 15),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '40 ر.س',
                        style: Styles.text16.copyWith(fontSize: 15),
                      ),
                      Text(
                        'سعر التوصيل',
                        style: Styles.text16.copyWith(fontSize: 15),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '180 ر.س',
                        style: Styles.text16.copyWith(fontSize: 17),
                      ),
                      Text(
                        'المجموع',
                        style: Styles.text16.copyWith(fontSize: 17),
                      )
                    ],
                  ),
                  Divider(),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 80,
                      ),
                      SvgPicture.asset(
                        'assetes/visa2.svg',
                        fit: BoxFit.fill,
                      ),
                      Text(
                        '   تم الدفع بواسطة',
                        style: Styles.text16,
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Material(
                child: customeButton(text: 'تقييم المنتجات', h: 60, w: 350))
          ],
        ),
      ),
    );
  }
}

class containerImage extends StatelessWidget {
  const containerImage({super.key, required this.image, required this.color});

  final String image;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Image.asset('$image'),
    );
  }
}
