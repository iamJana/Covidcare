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
        body: SingleChildScrollView(child: resoursecoloredCard('Resourse')));
  }
}

Widget resoursecoloredCard(tit) => Card(
    elevation: 8,
    clipBehavior: Clip.antiAlias,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(44),
    ),
    child: Container(
        height: 400,
        //#63FF87
        width: double.maxFinite,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.black, Colors.black],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                tit,
                style: TextStyle(
                  fontFamily: 'Nunito Sans',
                  fontSize: 30,
                  color: Color(0xffE50914),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 40),
            Text(
              'Covidcare',
              style: TextStyle(
                fontFamily: 'Nunito Sans',
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              ' All the Resources are taken from the authentic website from https://www.ayush.gov.in/',
              style: TextStyle(
                fontFamily: 'Nunito Sans',
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.normal,
              ),
            ),
            SizedBox(
              height: 40,
            ),
          ],
        )));
