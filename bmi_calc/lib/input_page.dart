import 'package:flutter/material.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xff1d1e33);
const bottomContainerColor = Color(0xffeb1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
              child: Row(
            children: const <Widget>[
              ReusableCard(
                color: activeCardColor,
                cardChild: IconContent(image: Icons.male, text: 'MALE'),
              ),
              ReusableCard(
                color: activeCardColor,
                cardChild: IconContent(image: Icons.female, text: 'FEMALE'),
              ),
            ],
          )),
          const ReusableCard(
            color: activeCardColor,
            cardChild: Text(''),
          ),
          Expanded(
              child: Row(
            children: const <Widget>[
              ReusableCard(
                color: activeCardColor,
                cardChild: Text(''),
              ),
              ReusableCard(
                color: activeCardColor,
                cardChild: Text(''),
              ),
            ],
          )),
          Container(
            color: bottomContainerColor,
            margin: const EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
