import 'package:covidcare/buildcard.dart';
import 'package:flutter/material.dart';

class Naturopathy extends StatefulWidget {
  @override
  _NaturopathyState createState() => _NaturopathyState();
}

const tc = Color(0xffffb01a);

class _NaturopathyState extends State<Naturopathy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Naturopathy'),
        backgroundColor: Color(0xff2C5F2D),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            buildColoredCard('Cold, Coryza-Running nose,Nasal Congestion',
                'Steam Inhalation with Tulsi, peppermint', 'NIL', tc),
            buildColoredCard(
                'Sore throat,',
                'Hot saline water gargle. Gargling with neem water decoction with honey',
                'NIL',
                tc),
            buildColoredCard(
                'Dry Cough',
                'Ginger Kashayam with honey, cloves, cinnamon, turmeric and pepper for dry cough in milk',
                'NIL',
                tc),
            buildColoredCard(
                'Headaches',
                'Hot foot Immersion for headaches with cold compress on head, Aromatherapy with Tulsi or lavender oils.',
                'NIL',
                tc),
            buildColoredCard('Fever',
                'Cold chest pack, cold sponging for pyrexia', 'NIL', tc),
            buildColoredCard('Wheeze, ChestCongestion',
                'Steam inhalation with Tulsi or eucalyptus oil.', 'NIL', tc),
            buildColoredCard('Malaise and Fatigue',
                'Lemon water with honey to boost immunity', 'NIL', tc),
            buildColoredCard(
                'Stress, Anxiety Depression',
                'Aroma therapy with lavender, Basil or lemon grass oils(Inhalation/steam inhalation)',
                'NIL',
                tc)
          ],
        ),
      ),
    );
  }
}
