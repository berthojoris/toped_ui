import 'package:flutter/material.dart';
import 'package:flutter_toped_ui/data/items.dart';

class KategoriPilihan extends StatelessWidget {
  const KategoriPilihan({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
  }
}
