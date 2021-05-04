import 'package:covidcare/allopathy.dart';
import 'package:covidcare/homeopathy.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'siddha.dart';
import 'ayruvedha.dart';
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
        scaffoldBackgroundColor: kBackgroundColor,
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
        appBar: AppBar(
          backgroundColor: Color(0xff6c63ff),
          title: Center(
            child: Text(
              'Covidcare',
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                'images/pict.png',
                width: double.infinity,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    child: CircularButton(
                      height: 130,
                      color: Color(0xff6c63ff),
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
                      color: Color(0xff6c63ff),
                      width: 130,
                      txt: 'Ayurvedha',
                    ),
                    onTap: () => {
                       Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Ayurvedha()),
                      )
                    },
                  )
                ],
              ),
              //6C63FF
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    child: CircularButton(
                      height: 130,
                      color: Color(0xff6c63ff),
                      width: 130,
                      txt: 'Allopathy',
                    ),
                    onTap: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Allopayth()),
                      )
                    },
                  ),
                  InkWell(
                    child: CircularButton(
                      height: 130,
                      color: Color(0xff6c63ff),
                      width: 130,
                      txt: 'Homeopathy',
                    ),
                    onTap: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Homeopathy()),
                      )
                    },
                  )
                ],
              )
            ],
          ),
        ));
  }
}

class CircularButton extends StatelessWidget {
  final double width;
  final double height;
  final Color color;
  final String txt;

  const CircularButton({Key key, this.width, this.height, this.color, this.txt})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      width: width,
      height: height,
      child: SafeArea(
          child: Center(
              child: Text(
        txt,
        style: TextStyle(fontSize: 20, color: Colors.white),
      ))),
    );
  }
}
