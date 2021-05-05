import 'package:flutter/material.dart';
import 'buildcard.dart';

class Ayurvedha extends StatefulWidget {
  @override
  _AyurvedhaState createState() => _AyurvedhaState();
}

const tc = Color(0xFFFF4848);

class _AyurvedhaState extends State<Ayurvedha> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ayurvedha'),
        backgroundColor: Color(0xff6c63ff),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            buildColoredCard('Fever (Jwara)', 'MahaSudarshanghanVati',
                '500 mg TDS with lukewarmwater', tc),
            buildColoredCard('Sore throat',
                'Vyoshadivati/ LavangadiVati/ Khadiradivati', '2 tab TDS', tc),
            buildColoredCard('Nasalcongestion(Pratishyaya)', 'Haridrakhand-',
                '3 - 5 gm BD with lukewarm water/ milk', tc),
            buildColoredCard('Myalgia(Parshwa - shoola,Shirashoola,Angamarda)',
                'Devadaryadikwatha', '30 - 40 ml BD before food', tc)
          ],
        ),
      ),
    );
  }
}
