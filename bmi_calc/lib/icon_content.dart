import 'package:flutter/material.dart';

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
