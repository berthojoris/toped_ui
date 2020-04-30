import 'package:flutter/material.dart';
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
import 'package:flutter_toped_ui/data/items.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
    );
  }
}
