import 'package:flutter/material.dart';

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'About',
          style: TextStyle(
            fontFamily: 'Nunito Sans',
          ),
        ),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(child: aboutColoredCard('About')),
    );
  }
}

Widget aboutColoredCard(tit) => Card(
    elevation: 8,
    clipBehavior: Clip.antiAlias,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(44),
    ),
    child: Container(
        height: 600,
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
              '1. This app is specially designed for self-quarantine peoples.\n2. This app categorized into four types of medicinal values.\n3. All the Resources are taken from the authentic website from https://www.ayush.gov.in/',
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
