import 'dart:async';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'package:flutter_toped_ui/view/tabs/account_tab.dart';
import 'package:flutter_toped_ui/view/tabs/cart_tab.dart';
import 'package:flutter_toped_ui/view/tabs/feed_tab.dart';
import 'package:flutter_toped_ui/view/tabs/home_tab.dart';
import 'package:flutter_toped_ui/view/tabs/inbox_tab.dart';

class HomePage extends StatefulWidget {
  @override
  State createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  DateTime time = DateTime.now();
  bool _disposed = false;
  int selectedPosition = 0;
  List<Widget> listBottomWidget = new List();

  @override
  void initState() {
    Timer(Duration(seconds: 1), () {
      if (!_disposed)
        setState(() {
          time = time.add(Duration(seconds: -1));
        });
    });
    super.initState();
    listBottomWidget.add(HomeTab());
    listBottomWidget.add(FeedTab());
    listBottomWidget.add(InboxTab());
    listBottomWidget.add(CartTab());
    listBottomWidget.add(AccountTab());
  }

  @override
  void dispose() {
    _disposed = true;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(right: 12.0),
              child: Image.asset(
                "assets/images/qrcode.png",
                width: 30,
                height: 30,
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.all(
                    Radius.circular(12.0),
                  ),
                ),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.search,
                      color: Colors.grey[400],
                    ),
                    Text(
                      "Cari di Tokopedia",
                      style: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 14.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        actions: <Widget>[
          BadgeIconButton(
            itemCount: 0,
            icon: Icon(
              Icons.favorite,
              size: 28.0,
              color: Colors.grey[400],
            ),
            badgeColor: Colors.red,
            badgeTextColor: Colors.white,
            hideZeroCount: true,
            onPressed: () {},
          ),
          BadgeIconButton(
            itemCount: 4,
            icon: Icon(
              Icons.notifications,
              size: 28.0,
              color: Colors.grey[400],
            ),
            badgeColor: Colors.red,
            badgeTextColor: Colors.white,
            hideZeroCount: true,
            onPressed: () {},
          ),
        ],
      ),
      body: Builder(
        builder: (context) {
          return listBottomWidget[selectedPosition];
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedPosition,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            title: Text('Feed'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            title: Text('Inbox'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            title: Text('Cart'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            title: Text('Account'),
          ),
        ],
        onTap: (position) {
          setState(() {
            selectedPosition = position;
          });
        },
      ),
    );
  }
}
