import 'dart:math';
import 'package:flutter/material.dart';
class Screen1 extends StatefulWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  List randomcolor=[
    Colors.white,
    Colors.red,
    Colors.orange,
    Colors.blue,
    Colors.green,
    Colors.deepPurple,
    Colors.yellow,
    Colors.blueGrey,
    Colors.pink
  ];
  var defaultcolor=Colors.red;
  get randcolor => Random().nextInt(randomcolor.length);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: defaultcolor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
        ElevatedButton(onPressed: (){
          setState(() {
          defaultcolor = randomcolor[randcolor];
        });}, child: Text('THE NEXT COLOR'))
      ]),
    );
  }
}
