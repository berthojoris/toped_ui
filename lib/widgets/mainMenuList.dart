import 'package:flutter/material.dart';
import 'package:flutter_toped_ui/data/items.dart';

class MainMenuList extends StatelessWidget {
  const MainMenuList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
  }
}
