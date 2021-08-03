import 'package:ecom/consts/firebaseImg.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BackgroundContainer extends StatelessWidget {
  BackgroundContainer({
    this.imagePath,
    this.boxLtext,
    this.boxStext,
    this.text,
    this.textSize = 70.0,
    this.textBoxSize = 100.0,
    this.text2,
    this.tap,
    this.height = 673.0,
  });

  final String imagePath;
  final String text;
  final double textSize;
  final double textBoxSize;
  final String text2;
  final String boxLtext;
  final String boxStext;
  final double height;

  final Function tap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      child: Stack(children: [
        FirebaseImage(
          imgUrl: imagePath,
          imgHeight: height,
          coverFit: false,
        ),
        GestureDetector(
          onTap: tap,
          child: Wrap(
            children: [
              Container(
                margin: EdgeInsets.only(
                  top: 300,
                  left: 35,
                ),
                constraints: BoxConstraints.expand(
                  height: textBoxSize,
                  width: 300.0,
                ),
                child: Column(
                  children: [
                    Text(
                      text,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: textSize,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      text2,
                      style: GoogleFonts.sedgwickAve(
                        color: Colors.white,
                        fontSize: 10.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  left: 110,
                ),
                constraints: BoxConstraints.expand(
                  height: 75.0,
                  width: 150.0,
                ),
                padding: EdgeInsets.only(
                  top: 5.0,
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white,
                    width: 6.0,
                    style: BorderStyle.solid,
                  ),
                ),
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Text(
                      boxLtext,
                      style: GoogleFonts.sedgwickAve(
                        color: Colors.white,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      boxStext,
                      style: GoogleFonts.sedgwickAve(
                        color: Colors.white,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
