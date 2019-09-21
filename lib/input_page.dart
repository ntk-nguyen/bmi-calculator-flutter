import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const activeCardColor = Color(0xFF1D1E33);
const bottomContainerColor = Color(0xFF1D1E33);
const bottomContainerHeight = 80.0;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                    child: ReusableCard(
                        color: activeCardColor,
                        cardChild: IconContent(
                            icon: FontAwesomeIcons.mars,
                            text: 'MALE'
                        ),
                    )
                ),
                Expanded(
                    child: ReusableCard(
                        color: activeCardColor,
                        cardChild: IconContent(
                            icon: FontAwesomeIcons.venus,
                            text: 'FEMALE'
                        ),
                    ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(color: activeCardColor),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                    child: ReusableCard(color: activeCardColor)
                ),
                Expanded(
                    child: ReusableCard(color: activeCardColor)
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          )
        ],
      )
    );
  }
}

class IconContent extends StatelessWidget {

  IconContent({this.icon, this.text});

  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(text,
            style: TextStyle(
                fontSize: 18.0,
              color: Color(0xFF8D8E98),
          ),
        ),
      ],
    );
  }
}

class ReusableCard extends StatelessWidget {

  ReusableCard({@required this.color, this.cardChild});

  final Color color;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
