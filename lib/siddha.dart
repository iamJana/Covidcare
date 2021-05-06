import 'package:flutter/material.dart';
import 'buildcard.dart';

class Siddha extends StatefulWidget {
  @override
  _SiddhaState createState() => _SiddhaState();
}

String tit;
String medicine;
String dose;
const tc = Color(0xffE50914);

class _SiddhaState extends State<Siddha> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Siddha',
          style: TextStyle(
            fontFamily: 'Nunito Sans',
          ),
        ),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            buildColoredCard(
                'Cough',
                'Thaleesathi Chooranam with Honey (Aiyam dominant symptoms)',
                '3 gm thrice daily with Honey or as directed by Siddha physician',
                tc),
            buildColoredCard(
                'Fever',
                'NilaVembuKudineer (NVK) / Kaba Sura Kudineer (KSK)',
                '5 ml to 60 ml as per the Direction off the physician.',
                tc),
            buildColoredCard(
                'Breathing Difficulty',
                'Seenthil Chooranam,SwasaKudori Mathirai',
                '1-2 gm twice daily for 15 days,1-2 Nos twice daily for 15 days',
                tc),
            buildColoredCard(
                'Sore throat',
                'Thaleesathi Chooranam with Honey (Aiyam dominant symptoms)',
                'Chew 1-2 pills as required or as directed by Siddha physician',
                tc),
            buildColoredCard(
                'Diarrhea',
                'Sundai Vatral Chooranam / Thayirchunti Chooranam',
                '2 gm with Buttermilk As directed by the physician',
                tc),
            buildColoredCard('Nausea & Vomiting', 'Madhulai Manapagu',
                '5-10 ml twice daily for 15 days', tc),
            buildColoredCard(
                'Nasal Congestion, Loss of smell',
                'Manjal kombupugai / Milagu pugai.',
                'Use as advised by physician.',
                tc),
          ],
        ),
      ),
    );
  }
}
