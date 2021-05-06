import 'package:covidcare/unani.dart';
import 'package:covidcare/naturopathy.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'siddha.dart';
import 'ayruvedha.dart';
import 'mpagecard.dart';

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
      // drawer: Drawer(
      //   child: ListView(
      //     children: [
      //       DrawerHeader(
      //         decoration: BoxDecoration(color: Colors.teal),
      //         child: Container(
      //           child: Column(
      //             children: [
      //               Material(
      //                 borderRadius: BorderRadius.all(Radius.circular(60.0)),
      //                 elevation: 10,
      //                 child: Padding(
      //                   padding: EdgeInsets.all(0.0),
      //                   child: Image.asset(
      //                     'images/pict.png',
      //                     width: 80,
      //                     height: 80,
      //                   ),
      //                 ),
      //               ),
      //               Padding(
      //                 padding: const EdgeInsets.all(8.0),
      //                 child: Text(
      //                   'CovidCare',
      //                   style: TextStyle(
      //                     color: Colors.white,
      //                     fontSize: 20.0,
      //                   ),
      //                 ),
      //               )
      //             ],
      //           ),
      //         ),
      //       ),
      //       CustomList(
      //           Icons.error_outline,
      //           'About',
      //           () => {
      //                 Navigator.push(
      //                   context,
      //                   MaterialPageRoute(builder: (context) => Ayurvedha()),
      //                 ),
      //               }),
      //       CustomList(
      //           Icons.people,
      //           "Developed by",
      //           () => {
      //                 Navigator.push(
      //                   context,
      //                   MaterialPageRoute(
      //                     builder: (context) => Ayurvedha(),
      //                   ),
      //                 )
      //               }),
      //     ],
      //   ),
      // ),
      appBar: AppBar(
        backgroundColor: Color(0xff6c63ff),
        title: Text(
          'Covidcare',
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'images/pict.png',
              width: double.infinity,
            ),
            InkWell(
              child: mainColoredCard('Siddha'),
              onTap: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Siddha()),
                )
              },
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              child: mainColoredCard('Ayurvedha'),
              onTap: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Ayurvedha()),
                )
              },
            ),
            //6C63FF
            SizedBox(
              height: 20,
            ),
            InkWell(
              child: mainColoredCard('Unani'),
              onTap: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Unani()),
                )
              },
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              child: mainColoredCard('Naturopathy'),
              onTap: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Naturopathy()),
                )
              },
            ),
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
// class CustomList extends StatelessWidget {
//   IconData icon;
//   String text;
//   Function onTap;
//   CustomList(this.icon, this.text, this.onTap);
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
//       child: Container(
//         decoration: BoxDecoration(
//             border: Border(bottom: BorderSide(color: Colors.grey.shade400))),
//         child: InkWell(
//             splashColor: Colors.orangeAccent,
//             onTap: onTap,
//             child: Container(
//               height: 50,
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Row(
//                     children: [
//                       Icon(icon),
//                       Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Text(
//                           text,
//                           style: TextStyle(fontSize: 16.0),
//                         ),
//                       )
//                     ],
//                   ),
//                   Icon(Icons.arrow_right)
//                 ],
//               ),
//             )),
//       ),
//     );
//   }
// }
