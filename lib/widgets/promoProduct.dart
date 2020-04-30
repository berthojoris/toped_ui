import 'package:flutter/material.dart';
import 'package:flutter_toped_ui/data/items.dart';

class PromoProduct extends StatelessWidget {
  const PromoProduct({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DateTime time = DateTime.now();
    return Column(
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
  }
}
