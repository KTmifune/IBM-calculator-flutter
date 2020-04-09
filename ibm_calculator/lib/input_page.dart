import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  InputPage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(
                  child: ReusableCard(color: Colors.blueGrey),
                ),
                Expanded(
                  child: ReusableCard(color: Colors.blueGrey),
                ),
              ],
            ),
            Expanded(
              child: ReusableCard(color: Colors.blueGrey),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(
                  child: ReusableCard(color: Colors.blueGrey),
                ),
                Expanded(
                  child: ReusableCard(color: Colors.blueGrey),
                ),
              ],
            ),
            Container(
              height: 80.0,
              width: double.infinity,
              color: Colors.pink,
              margin: EdgeInsets.only(top: 10.0),
            ),
          ],
        ),
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  final Color color;
  ReusableCard({@required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
