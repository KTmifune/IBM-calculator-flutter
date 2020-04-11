import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final Function onPressed;

  RoundIconButton({@required this.icon, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
        elevation: 10.0,
        constraints: BoxConstraints.tightFor(
          height: 56.0,
          width: 56.0,
        ),
        shape: CircleBorder(),
        fillColor: Colors.grey,
        child: Icon(icon, size: 20.0),
        onPressed: onPressed);
  }
}
