import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:market/Style.dart';
import 'package:market/Widgets/customeButton.dart';
import 'package:get/get.dart';
import '../Widgets/containerIcon.dart';
import '../Widgets/salaCategores.dart';
import 'confirmeOrder.dart';

class salaa extends StatelessWidget {
  const salaa({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 30),
        color: Colors.white,
        padding: EdgeInsets.symmetric(
          horizontal: 5,
        ),
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: 150,
                ),
                Text(
                  'السلة',
                  style: Styles.text16.copyWith(fontSize: 20),
                ),
                SizedBox(
                  width: 67,
                ),
                containerIcon(opacity: true,
                  color: Color(0xff61B80C).withOpacity(0.1),
                  image: 'assetes/Arrow - Right-1.png',
                  r: 20,
                ),
              ],
            ),
            Container(
                height: 450,
                child: ListView.builder(
                  itemBuilder: (context, index) => salaCategores(),
                  itemCount: 4,
                  padding: EdgeInsets.zero,
                  physics: NeverScrollableScrollPhysics(),
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                customeButton(
                  text: 'تطبيق',
                  onTap: () {},
                  w: 100,
                  h: 40,
                ),
                Text(
                  'عندك كوبون ؟ ادخل رقم الكوبون  ',
                  style: Styles.text16ligth,
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '% جميع الأسعار تشمل قيمة الضريبة المضافة 15',
              style: Styles.text16,
            ),
            Container(
              padding: EdgeInsets.all(10),
              width: double.infinity,
              height: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xffF3F8EE),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 5,
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
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '-40 ر.س',
                        style: Styles.text16.copyWith(fontSize: 15),
                      ),
                      Text(
                        'الخصم',
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
                        '140 ر.س',
                        style: Styles.text16.copyWith(fontSize: 17),
                      ),
                      Text(
                        'المجموع',
                        style: Styles.text16.copyWith(fontSize: 17),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            customeButton(
              text: 'الانتقال لإتمام الطلب',
              h: 60,
              w: 350,
              onTap: () {
                Get.to(() => confirmeOrder());
              },
            )
          ],
        ),
      ),
    );
  }
}
