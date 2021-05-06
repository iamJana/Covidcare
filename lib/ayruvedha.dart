import 'package:flutter/material.dart';
import 'buildcard.dart';

class Ayurvedha extends StatefulWidget {
  @override
  _AyurvedhaState createState() => _AyurvedhaState();
}

const tc = Color(0xffE50914);

class _AyurvedhaState extends State<Ayurvedha> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          title: Text('Ayurveda',
              style: TextStyle(
                fontFamily: 'Nunito Sans',
              )),
          backgroundColor: Colors.black),
      body: SingleChildScrollView(
        child: Column(
          children: [
            buildColoredCard('Fever', 'MahaSudarshanghanVati',
                '500 mg TDS with lukewarmwater', tc),
            buildColoredCard('Sore throat',
                'Vyoshadivati/ LavangadiVati/ Khadiradivati', '2 tab TDS', tc),
            buildColoredCard('Nasalcongestion', 'Haridrakhand-',
                '3 - 5 gm BD with lukewarm water/ milk', tc),
            buildColoredCard('Myalgia', 'Devadaryadikwatha',
                '30 - 40 ml BD before food', tc),
            buildColoredCard(
                'Cough',
                'Talisadi Churna ',
                '(4 g)+ Madhuyashtichurna (2 g) BDwith honey/ lukewarm water',
                tc),
            buildColoredCard('Dehydrationfeatures', 'Shadangapaneeya',
                '40 ml tid/as per requirement', tc),
          ],
        ),
      ),
    );
  }
}
