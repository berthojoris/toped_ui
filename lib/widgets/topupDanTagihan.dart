import 'package:flutter/material.dart';

class TopUpTagihan extends StatelessWidget {
  const TopUpTagihan({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
  }
}
