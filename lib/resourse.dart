import 'package:flutter/material.dart';

class Resourse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Resources',
          style: TextStyle(
            fontFamily: 'Nunito Sans',
          ),
        ),
      ),
      body: Container(
        child: Text(
          'All the Resources are taken from Ayush Website\n https://www.ayush.gov.in/',
          style: TextStyle(fontFamily: 'Nunito Sans', fontSize: 20.0),
        ),
      ),
    );
  }
}
