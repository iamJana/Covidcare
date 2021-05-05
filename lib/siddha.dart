import 'package:flutter/material.dart';

class Siddha extends StatefulWidget {
  @override
  _SiddhaState createState() => _SiddhaState();
}

String tit;
String medicine;
String dose;

class _SiddhaState extends State<Siddha> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Siddha'),
        backgroundColor: Colors.red,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            buildColoredCard(
                'Cough',
                'Thaleesathi Chooranam with Honey (Aiyam dominant symptoms)',
                '3 gm thrice daily with Honey or as directed by Siddha physician'),
            buildColoredCard(
                'Fever',
                'NilaVembuKudineer (NVK) / Kaba Sura Kudineer (KSK)',
                '5 ml to 60 ml as per the Direction off the physician.'),
            buildColoredCard(
                'Breathing Difficulty',
                'Seenthil Chooranam,SwasaKudori Mathirai',
                '1-2 gm twice daily for 15 days,1-2 Nos twice daily for 15 days'),
            buildColoredCard(
                'Sore throat',
                'Thaleesathi Chooranam with Honey (Aiyam dominant symptoms)',
                'Chew 1-2 pills as required or as directed by Siddha physician'),
          ],
        ),
      ),
    );
  }
}

Widget buildColoredCard(tit, medicine, dose) => Card(
      shadowColor: Colors.red,
      elevation: 8,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
      child: Container(
        height: 280,
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
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 4),
            const SizedBox(height: 4),
            Text(
              'Medicine',
              style: TextStyle(
                  fontSize: 25,
                  color: Color(0xffE50914),
                  fontWeight: FontWeight.bold),
            ),
            Text(
              medicine,
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 4),
            const SizedBox(height: 4),
            Text(
              'Dosage',
              style: TextStyle(
                  fontSize: 25,
                  color: Color(0xffE50914),
                  fontWeight: FontWeight.bold),
            ),
            Text(
              dose,
              style: TextStyle(
                fontSize: 20,
                // #E50914
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
