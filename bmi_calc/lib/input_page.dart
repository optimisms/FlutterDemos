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
    );
  }
}

class IconContent extends StatelessWidget {
  const IconContent({required this.image, required this.text, Key? key})
      : super(key: key);

  final IconData image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          image,
          size: 80.0,
        ),
        const SizedBox(
          height: 15.0,
        ),
        Text(
          text,
          style: const TextStyle(
            fontSize: 18.0,
            color: Color(0xff8d8e98),
          ),
        ),
      ],
    );
  }
}

class ReusableCard extends StatelessWidget {
  const ReusableCard({
    required this.color,
    required this.cardChild,
    super.key,
  });

  final Color color;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: color,
        ),
        child: cardChild,
      ),
    );
  }
}
