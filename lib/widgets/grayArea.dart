import 'package:flutter/material.dart';

class GrayArea extends StatelessWidget {
  const GrayArea({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10.0,
      color: Colors.grey[200],
    );
  }
}
