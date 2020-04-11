import 'package:flutter/material.dart';
import '../constants.dart';

// 性別のアイコン設定
class IconContent extends StatelessWidget {
  final IconData icon;
  final String text;

  IconContent({@required this.icon, this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          color: Colors.white,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          text,
          style: textStyle,
        )
      ],
    );
  }
}
