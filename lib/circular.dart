import 'package:flutter/material.dart';

class CircularButton extends StatelessWidget {
  final double width;
  final double height;
  final Color color;
  final String txt;

  const CircularButton({Key key, this.width, this.height, this.color, this.txt})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      width: width,
      height: height,
      child: SafeArea(
          child: Center(
              child: Text(
        txt,
        style: TextStyle(
            fontFamily: 'Nunito Sans',
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.bold),
      ))),
    );
  }
}
