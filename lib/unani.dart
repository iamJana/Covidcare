import 'package:flutter/material.dart';
import 'buildcard.dart';

class Unani extends StatefulWidget {
  @override
  _UnaniState createState() => _UnaniState();
}

const tc = Color(0xffE50914);

class _UnaniState extends State<Unani> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          title: Text('Unani',
              style: TextStyle(
                fontFamily: 'Nunito Sans',
              )),
          backgroundColor: Colors.black),
      body: SingleChildScrollView(
        child: (Column(
          children: [
            buildColoredCard(
                'Dry Cough',
                'Habb-e-Surfa(125-250 mg)',
                '125 mg (pill) twice daily for 6-12 years of age &  250 mg (pill) twice daily forabove 12 years of age',
                tc),
            buildColoredCard(
                'High Fever',
                'Habb-e-Bukhar(250-500 mg)',
                '250 mg (pill) twice daily for 6-12 years of age & 500 mg (pill) twice daily forabove 12 years of age',
                tc),
            buildColoredCard(
                'Sore Throat',
                'Sharbat-e-Toot Siyah (20-40 ml) (Not recommended for diabetics)',
                '20 ml twice daily for above 12years of age',
                tc),
            buildColoredCard(
                'Difficulty In Breathing',
                'Laooq-e-Katan (10-20 gm) (Not recommended fordiabetics)',
                '20 ml twice daily for above 12 years of age',
                tc)
          ],
        )),
      ),
    );
  }
}
