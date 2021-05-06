import 'package:covidcare/buildcard.dart';
import 'package:flutter/material.dart';

class Naturopathy extends StatefulWidget {
  @override
  _NaturopathyState createState() => _NaturopathyState();
}

const tc = Color(0xffE50914);

class _NaturopathyState extends State<Naturopathy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Naturopathy',
            style: TextStyle(
              fontFamily: 'Nunito Sans',
            )),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            buildColoredCard('Cold, Coryza-Running nose',
                'Steam Inhalation with Tulsi', 'NIL', tc),
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
                'Hot foot Immersion for headaches with cold compress on head.',
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
                'Aroma therapy with lavender, Basil or lemon grass oils',
                'NIL',
                tc)
          ],
        ),
      ),
    );
  }
}
