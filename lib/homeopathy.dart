import 'package:flutter/material.dart';
class Homeopathy extends StatefulWidget {
  @override
  _HomeopathyState createState() => _HomeopathyState();
}

class _HomeopathyState extends State<Homeopathy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Homeopathy'),
      backgroundColor: Color(0xff6c63ff),
      ),
    );
  }
}