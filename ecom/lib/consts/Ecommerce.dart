import 'dart:typed_data';
import 'package:ecom/screens/2ndProductScreen.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:ecom/screens/productScreen.dart';
import 'package:ecom/screens/homeScreen.dart';
import 'package:ecom/consts/firebaseImg.dart';

class Ecommerce extends StatelessWidget {
  static int numOFProductsInCart = 0;
  static double totalPrice = 0.0;
  static List<int> idsAddedToList = [];
  static List<int> repeatedItems = [];
  static List<String> fitSize = [];
  static List<String> productNames = [];
  static List<String> productColorNum = [];
  static List<double> productPrices = [];
  static List<String> imagesUrl = [];
  static var videosUrl = [];
  static List<Uint8List> repeatedImagesData = [];
  static void toast(String message) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM, // also possible "TOP" and "CENTER"
      backgroundColor: Colors.black26,
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      initialRoute: Home.id,
      routes: {
        Home.id: (context) => Home(),
        ProductScreen.id: (context) => ProductScreen(),
        SecondProductScreen.id: (context) => SecondProductScreen(),
        FirebaseImage.id: (context) => FirebaseImage(),
      },
    );
  }
}
