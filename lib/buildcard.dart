import 'package:flutter/material.dart';

Widget buildColoredCard(tit, medicine, dose, tc) => Card(
      elevation: 28,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(44),
      ),
      child: Container(
        height: 300,
        width: double.maxFinite,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.black, Colors.black],
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
                  fontFamily: 'Nunito Sans',
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
                  fontFamily: 'Nunito Sans',
                  fontSize: 25,
                  color: tc,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              medicine,
              style: TextStyle(
                fontFamily: 'Nunito Sans',
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 4),
            const SizedBox(height: 4),
            Text(
              'Dosage',
              style: TextStyle(
                  fontFamily: 'Nunito Sans',
                  fontSize: 25,
                  color: tc,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              dose,
              style: TextStyle(
                fontFamily: 'Nunito Sans',
                fontSize: 20,
                // #E50914
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
