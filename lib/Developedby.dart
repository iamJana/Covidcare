import 'package:flutter/material.dart';

class Developed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Team Naruto',
          style: TextStyle(
            fontFamily: 'Nunito Sans',
          ),
        ),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(child: developColoredCard('Team ID: ID141')),
    );
  }
}

Widget developColoredCard(tit) => Card(
      elevation: 8,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(44),
      ),
      child: Container(
        height: 1000,
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
              'Team Leader\'s: JANA M',
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
              'Email: jana.18it@sonatech.ac.in',
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
            Text(
              'Team Member 1: Ishwarya S',
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
              'Email: ishwarya.18it@sonatech.ac.in',
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
            Text(
              'Team Member 2: Haritha S',
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
              'Email: haritha.18it@sonatech.ac.in',
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
            Text(
              'Team Member 3: Abishek M',
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
              'Email: abishekm.18it@sonatech.ac.in',
              style: TextStyle(
                fontFamily: 'Nunito Sans',
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
