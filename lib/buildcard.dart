import 'package:flutter/material.dart';

Widget buildColoredCard(tit, medicine, dose, tc) => Card(
      shadowColor: Colors.red,
      elevation: 8,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(34),
      ),
      child: Container(
        height: 280,
        width: double.maxFinite,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xff2C5F2D), Color(0xff2C5F2D)],
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
                  color: tc,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 4),
            const SizedBox(height: 4),
            Text(
              'Medicine',
              style: TextStyle(
                  fontSize: 25, color: tc, fontWeight: FontWeight.bold),
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
                  fontSize: 25, color: tc, fontWeight: FontWeight.bold),
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
