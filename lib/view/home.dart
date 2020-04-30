import 'dart:async';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'package:flutter_toped_ui/data/items.dart';
import 'package:flutter_toped_ui/helper/flucommerce/slider/image_slider.dart';
import 'package:flutter_toped_ui/widgets/bannerBelanjaUntung.dart';
import 'package:flutter_toped_ui/widgets/bannerBeliKebutuhan.dart';
import 'package:flutter_toped_ui/widgets/bannerPromoSpesial.dart';
import 'package:flutter_toped_ui/widgets/grayArea.dart';
import 'package:flutter_toped_ui/widgets/kategoriPilihan.dart';
import 'package:flutter_toped_ui/widgets/mainMenuList.dart';
import 'package:flutter_toped_ui/widgets/mostTrendingProduct.dart';
import 'package:flutter_toped_ui/widgets/promoProduct.dart';
import 'package:flutter_toped_ui/widgets/topupDanTagihan.dart';

class HomePage extends StatefulWidget {
  @override
  State createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  DateTime time = DateTime.now();
  bool _disposed = false;

  @override
  void initState() {
    Timer(Duration(seconds: 1), () {
      if (!_disposed)
        setState(() {
          time = time.add(Duration(seconds: -1));
        });
    });
    super.initState();
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
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: 0, // this will be set when a tab is tapped
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
            title: Text('Keranjang'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            title: Text('Akun'),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ImageSlider(images: images),
            MainMenuList(),
            GrayArea(),
            PromoProduct(),
            GrayArea(),
            BannerPromoSpecial(),
            GrayArea(),
            BannerBelanjaUntung(),
            GrayArea(),
            MostTrendingProduct(),
            GrayArea(),
            BannerBeliKebutuhan(),
            GrayArea(),
            TopUpTagihan(),
            GrayArea(),
            KategoriPilihan(),
          ],
        ),
      ),
    );
  }
}
