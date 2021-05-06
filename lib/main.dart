import 'package:covidcare/unani.dart';
import 'package:covidcare/naturopathy.dart';
import 'package:flutter/material.dart';
import 'about.dart';
import 'siddha.dart';
import 'ayruvedha.dart';
import 'circular.dart';
import 'Developedby.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Covidcare',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      home: MyHomePage(title: 'Covidcare'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.black),
              child: Container(
                child: Column(
                  children: [
                    Material(
                      borderRadius: BorderRadius.all(Radius.circular(80.0)),
                      elevation: 10,
                      child: Padding(
                        padding: EdgeInsets.all(0.0),
                        child: Image.asset(
                          'images/circle-cropped.png',
                          height: 80,
                          width: 80,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'CovidCare',
                        style: TextStyle(
                          fontFamily: 'Nunito Sans',
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            CustomList(
                Icons.error_outline,
                'About',
                () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => About()),
                      ),
                    }),
            CustomList(
                Icons.people,
                "Developed by",
                () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Developed(),
                        ),
                      )
                    }),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Covidcare',
          style: TextStyle(
            fontFamily: 'Nunito Sans',
            fontSize: 20,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                'images/black.png',
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  child: CircularButton(
                    height: 130,
                    color: Colors.black,
                    width: 130,
                    txt: 'Siddha',
                  ),
                  onTap: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Siddha()),
                    )
                  },
                ),
                InkWell(
                  child: CircularButton(
                    height: 130,
                    color: Colors.black,
                    width: 130,
                    txt: 'Ayurvedha',
                  ),
                  onTap: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Ayurvedha()),
                    )
                  },
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),

            //6C63FF
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  child: CircularButton(
                    height: 130,
                    color: Colors.black,
                    width: 130,
                    txt: 'Unani',
                  ),
                  onTap: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Unani()),
                    )
                  },
                ),
                InkWell(
                  child: CircularButton(
                    height: 130,
                    color: Colors.black,
                    width: 130,
                    txt: 'Naturopathy',
                  ),
                  onTap: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Naturopathy()),
                    )
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class CustomList extends StatelessWidget {
  IconData icon;
  String text;
  Function onTap;
  CustomList(this.icon, this.text, this.onTap);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
      child: Container(
        decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.grey.shade400))),
        child: InkWell(
            splashColor: Colors.orangeAccent,
            onTap: onTap,
            child: Container(
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(icon),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          text,
                          style: TextStyle(
                            fontSize: 20.0,
                            fontFamily: 'Nunito Sans',
                          ),
                        ),
                      )
                    ],
                  ),
                  Icon(Icons.arrow_right)
                ],
              ),
            )),
      ),
    );
  }
}
