import 'package:flutter/material.dart';

class BannerPromoSpecial extends StatelessWidget {
  const BannerPromoSpecial({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(12.0),
          child: Text(
            "Promo Spesial Pengguna Baru",
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
              color: Colors.grey[800],
            ),
          ),
        ),
        Image(
          image: AssetImage('assets/images/promo_spesial.png'),
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.fill,
        ),
      ],
    );
  }
}
