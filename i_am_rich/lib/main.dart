import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.blueGrey,
          appBar: AppBar(
              title: const Text('I Am Rich'),
              backgroundColor: Colors.blueGrey[900]),
          body: const Center(
              // child: Image(
              //     image: NetworkImage(
              //         'https://www.usnews.com/object/image/0000017b-2cb8-d4a4-adff-3cb8e47d0000/intro.jpg?update-time=1628542919817&size=responsive640')),
              child: Image(image: AssetImage('images/diamond.png')))),
    );
  }
}
