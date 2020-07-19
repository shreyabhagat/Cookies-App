import 'package:Cookies/widgets/myCard.dart';
import 'package:Cookies/widgets/myTabBar.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'myAppBar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        backgroundColor: Colors.grey.shade200,
        appBar: myAppBar('Pickup', Icons.notifications_none),
        bottomNavigationBar: CurvedNavigationBar(
          animationCurve: Curves.easeInOutCubic,
          backgroundColor: Colors.grey.shade200,
          height: 57,
          index: 2,
          buttonBackgroundColor: Colors.grey.shade200,
          items: <Widget>[
            Icon(
              Icons.home,
              color: Color(0xffde611f),
              size: 30,
            ),
            Icon(
              Icons.person_outline,
              size: 30,
              color: Colors.grey,
            ),
            Container(
              height: 60,
              width: 60,
              child: Icon(
                Icons.fastfood,
                size: 30,
                color: Colors.white,
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xffde611f),
              ),
            ),
            Icon(
              Icons.search,
              size: 30,
              color: Colors.grey,
            ),
            Icon(
              Icons.shopping_basket,
              size: 30,
              color: Colors.grey,
            ),
          ],
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          margin: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          child: ListView(
            children: <Widget>[
              Text(
                'Categories',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 6,
              ),
              MyTabBar(
                title1: 'Cookies',
                title2: 'Cookie Cake',
                title3: 'Ice Cream',
              ),
              SizedBox(
                height: 14,
              ),
              Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      MyCard(
                        image: Image.asset('images/cookiemint.jpg'),
                        price: 3.99,
                        title: 'Cookie mint',
                        height: 215,
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      MyCard(
                        image: Image.asset('images/cookievan.jpg'),
                        price: 5.99,
                        title: 'Cookie cream',
                        height: 215,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: <Widget>[
                      MyCard(
                        image: Image.asset('images/cookieclassic.jpg'),
                        price: 1.99,
                        title: 'Cookie classic',
                        height: 244,
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      MyCard(
                        image: Image.asset('images/cookiechoco.jpg'),
                        price: 2.99,
                        title: 'Cookie choco',
                        height: 244,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
