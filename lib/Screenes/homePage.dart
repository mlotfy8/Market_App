import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:market/Style.dart';
import 'package:market/Widgets/Categores.dart';
import 'package:market/Widgets/customeAppBar.dart';

import '../Widgets/homeTextform.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  int selected = 4;

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            customeAppBar(),
            homeTextForm(),
            SizedBox(height: 10),
            Stack(children: [
              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                            'assetes/0ac3dbf6f00da227b4ac38c680fc9b73.png'),
                        fit: BoxFit.fitHeight)),
              ),
              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.transparent,
                        Color(0xff46BB7D).withOpacity(0.5)
                      ]),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 80, left: 120),
                child: Text(
                  'عروض دائمه',
                  style:
                      Styles.text16.copyWith(color: Colors.white, fontSize: 20),
                ),
              ),
            ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '    عرض الكل',
                  style: Styles.text16ligth,
                ),
                Text(
                  'الأقسام   ',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )
              ],
            ),
            Image.asset(
              'assetes/Scroll Group 1.png',
              fit: BoxFit.contain,
            ),
            Align(
              alignment: Alignment.topRight,
              child: Text(
                'الأصناف   ',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 290,
              child: GridView.builder(
                  padding: EdgeInsets.zero,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.2,
                    mainAxisSpacing: 2,
                  ),
                  itemCount: 2,
                  itemBuilder: (context, index) => Categores()),
            ),
          ],
        )),
        bottomNavigationBar: BottomNavigationBar(
          unselectedLabelStyle: TextStyle(color: Colors.red),
          selectedLabelStyle: TextStyle(color: Colors.blue),
          showUnselectedLabels: true,
          onTap: (index) {
            selected = index;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(
                backgroundColor: Color(0xff4C8613),
                icon: Image.asset('assetes/User.png'),
                label: 'حسابي'),
            BottomNavigationBarItem(
                backgroundColor: Color(0xff4C8613),
                icon: Image.asset('assetes/Icon ionic-ios-heart-empty.png'),
                label: 'المفضلة'),
            BottomNavigationBarItem(
                backgroundColor: Color(0xff4C8613),
                icon: Image.asset('assetes/Notification-1.png'),
                label: 'الإشعارات'),
            BottomNavigationBarItem(
                backgroundColor: Color(0xff4C8613),
                icon: Image.asset('assetes/Note.png'),
                label: 'طلباتي'),
            BottomNavigationBarItem(
                backgroundColor: Color(0xff4C8613),
                icon: Image.asset('assetes/Home.png'),
                label: 'الرئيسية'),
          ],
          currentIndex: selected,
        ));
  }
}
