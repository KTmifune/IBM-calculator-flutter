import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const activeCardColor = Colors.blueGrey;
const bottomContainerColor = Colors.pink;
const inactiveColor = Color(0xFF322E80);

enum Gender { male, female }

class InputPage extends StatefulWidget {
  InputPage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectGender;

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
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectGender = Gender.male;
                      });
                    },
                    color: selectGender == Gender.male
                        ? activeCardColor
                        : inactiveColor,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.google,
                      text: '男性',
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                      onPress: () {
                        setState(() {
                          selectGender = Gender.female;
                        });
                      },
                      color: selectGender == Gender.female
                          ? activeCardColor
                          : inactiveColor,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.apple,
                        text: '女性',
                      )),
                ),
              ],
            ),
            Expanded(
              child: ReusableCard(color: activeCardColor),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(
                  child: ReusableCard(color: activeCardColor),
                ),
                Expanded(
                  child: ReusableCard(color: activeCardColor),
                ),
              ],
            ),
            Container(
              height: 80.0,
              width: double.infinity,
              color: bottomContainerColor,
              margin: EdgeInsets.only(top: 10.0),
            ),
          ],
        ),
      ),
    );
  }
}
