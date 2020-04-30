import 'dart:async';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'package:flutter_toped_ui/data/items.dart';
import 'package:flutter_toped_ui/helper/flucommerce/slider/image_slider.dart';

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
    var imageSlider = ImageSlider(
      images: images,
    );

    var mainMenuList = Container(
      width: MediaQuery.of(context).size.width,
      height: 180.0,
      child: IgnorePointer(
        child: GridView.count(
          crossAxisCount: 4,
          children: List.generate(
            menuItems.length,
            (index) {
              return Column(
                children: <Widget>[
                  Container(
                    width: 60.0,
                    height: 60.0,
                    margin: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      border: Border.all(color: Colors.grey[300]),
                    ),
                    child: Center(
                      child: Image.asset(menuItems[index]["image"]),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      menuItems[index]["text"],
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 10.0,
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );

    var greyArea = Container(
      height: 10.0,
      color: Colors.grey[200],
    );

    var promoProduct = Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                child: Row(
                  children: <Widget>[
                    Text(
                      "Flash Sale   ",
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(4.0),
                      decoration: BoxDecoration(
                        color: Color(0xffff3e2f),
                        borderRadius: BorderRadius.all(Radius.circular(6.0)),
                      ),
                      child: Text(
                        time.hour.toString().padLeft(2, "0"),
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Text(
                      " : ",
                      style: TextStyle(
                        color: Color(0xffff3e2f),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(4.0),
                      decoration: BoxDecoration(
                        color: Color(0xffff3e2f),
                        borderRadius: BorderRadius.all(Radius.circular(6.0)),
                      ),
                      child: Text(
                        time.minute.toString().padLeft(2, "0"),
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Text(
                      " : ",
                      style: TextStyle(
                        color: Color(0xffff3e2f),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(4.0),
                      decoration: BoxDecoration(
                        color: Color(0xffff3e2f),
                        borderRadius: BorderRadius.all(Radius.circular(6.0)),
                      ),
                      child: Text(
                        time.second.toString().padLeft(2, "0"),
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                "Lihat Semuanya",
                style: TextStyle(
                  color: Colors.green,
                ),
              ),
            ],
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 280.0,
          child: IgnorePointer(
            child: GridView.count(
              crossAxisCount: 3,
              children: List.generate(
                promoProductItems.length,
                (index) {
                  return Column(
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          Container(
                            height: 100.0,
                            child: Image.asset(
                              promoProductItems[index]["image"],
                            ),
                          ),
                          Positioned(
                            top: 0,
                            right: 0,
                            child: Container(
                              padding: EdgeInsets.all(4.0),
                              child: Text(
                                "${promoProductItems[index]["discount_percent"]} OFF",
                                style: TextStyle(
                                  color: Colors.red[900],
                                  fontSize: 10.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              decoration: BoxDecoration(
                                color: Colors.red[100],
                                border: Border.all(
                                  color: Colors.red,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(12.0),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        promoProductItems[index]["real_price"],
                        style: TextStyle(
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                      Text(
                        promoProductItems[index]["discount_price"],
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.orange[900],
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        ),
      ],
    );

    var bannerPromoSpesial = Column(
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

    var bannerBelanjaUntung = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(12.0),
          child: Text(
            "Belanja Untung, Banjir Rezeki",
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
              color: Colors.grey[800],
            ),
          ),
        ),
        Image(
          image: AssetImage('assets/images/belanja_untung.png'),
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.fill,
        ),
      ],
    );

    var mostTrendingProduct = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(12.0),
          child: Text(
            "Most Trending Product",
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
              color: Colors.grey[800],
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 300.0,
          child: IgnorePointer(
            child: GridView.count(
              crossAxisCount: 3,
              children: List.generate(
                mostTrendingProductItems.length,
                (index) {
                  return Image(
                    image: AssetImage(
                      mostTrendingProductItems[index]["image"],
                    ),
                    fit: BoxFit.fill,
                  );
                },
              ),
            ),
          ),
        ),
      ],
    );

    var bannerBeliKebutuhan = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(12.0),
          child: Text(
            "Beli Kebutuhan, Raih Bonusnya",
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
              color: Colors.grey[800],
            ),
          ),
        ),
        Image(
          image: AssetImage('assets/images/beli_kebutuhan.png'),
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.fill,
        ),
      ],
    );

    var topupDanTagihan = Container(
      height: 320.0,
      child: DefaultTabController(
        length: 5,
        child: Scaffold(
          resizeToAvoidBottomPadding: false,
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 1.0,
            title: Text(
              'Topup & Tagihan',
              style: TextStyle(
                color: Colors.grey[800],
              ),
            ),
            bottom: TabBar(
              isScrollable: true,
              indicatorColor: Colors.green[200],
              indicatorWeight: 6.0,
              labelColor: Colors.grey[600],
              tabs: [
                Tab(icon: Text("Pulsa")),
                Tab(icon: Text("Paket Data")),
                Tab(icon: Text("M-Tix XXI")),
                Tab(icon: Text("E-Samsat")),
                Tab(icon: Text("Account")),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Container(
                padding: EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: "Nomor Telepon",
                              hintText: "Contoh: 082165956565",
                              alignLabelWithHint: true,
                            ),
                          ),
                        ),
                        Icon(Icons.contacts),
                      ],
                    ),
                    RaisedButton(
                      color: Colors.orange[900],
                      child: Text(
                        "Beli",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: "Nomor Telepon",
                              hintText: "Contoh: 082165956565",
                              alignLabelWithHint: true,
                            ),
                          ),
                        ),
                        Icon(Icons.contacts),
                      ],
                    ),
                    RaisedButton(
                      color: Colors.orange[900],
                      child: Text(
                        "Beli",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Container(
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                labelText: "Nomor Telepon",
                                hintText: "Contoh: 082165956565",
                                alignLabelWithHint: true,
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          Image.asset("assets/images/xxi.png"),
                        ],
                      ),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            width: 1.0,
                            color: Colors.grey[400],
                          ),
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        DropdownButton(
                          value: "Rp 300.000",
                          isExpanded: true,
                          items: [
                            DropdownMenuItem(
                              value: "Rp 300.000",
                              child: Text("Rp 300.000"),
                            ),
                            DropdownMenuItem(
                              value: "Rp 505.000",
                              child: Text("Rp 505.000"),
                            ),
                            DropdownMenuItem(
                              value: "Rp 707.000",
                              child: Text("Rp 707.000"),
                            ),
                          ],
                          onChanged: (value) {},
                        )
                      ],
                    ),
                    RaisedButton(
                      color: Colors.orange[900],
                      child: Text(
                        "Beli",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Container(
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                labelText: "Kode Bayar",
                                hintText: "Contoh: 1234567890",
                                alignLabelWithHint: true,
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          Image.asset("assets/images/kode_bayar.png"),
                        ],
                      ),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            width: 1.0,
                            color: Colors.grey[400],
                          ),
                        ),
                      ),
                    ),
                    RaisedButton(
                      color: Colors.orange[900],
                      child: Text(
                        "Beli",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Container(
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                labelText: "Kode Bayar",
                                hintText: "Contoh: 1234567890",
                                alignLabelWithHint: true,
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          Image.asset("assets/images/kode_bayar.png"),
                        ],
                      ),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            width: 1.0,
                            color: Colors.grey[400],
                          ),
                        ),
                      ),
                    ),
                    RaisedButton(
                      color: Colors.orange[900],
                      child: Text(
                        "Beli",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );

    var kategoriPilihan = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(12.0),
          child: Text(
            "Kategori Pilihan Untukmu",
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
              color: Colors.grey[800],
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 300.0,
          child: IgnorePointer(
            child: GridView.count(
              crossAxisCount: 3,
              children: List.generate(
                kategoriPilihanItems.length,
                (index) {
                  return Image(
                    image: AssetImage(kategoriPilihanItems[index]["image"]),
                    fit: BoxFit.fill,
                  );
                },
              ),
            ),
          ),
        ),
      ],
    );

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
            imageSlider,
            mainMenuList,
            greyArea,
            promoProduct,
            greyArea,
            bannerPromoSpesial,
            greyArea,
            bannerBelanjaUntung,
            greyArea,
            mostTrendingProduct,
            greyArea,
            bannerBeliKebutuhan,
            greyArea,
            topupDanTagihan,
            greyArea,
            kategoriPilihan,
          ],
        ),
      ),
    );
  }
}
