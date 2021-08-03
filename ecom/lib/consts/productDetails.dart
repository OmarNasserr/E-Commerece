import 'package:ecom/consts/firebaseImg.dart';
import 'package:flutter/material.dart';

//
//
//USED TO SET THE PROPERTIES OF THE PRODUCT PHOTOS
//
//
//
class ProductDetails extends StatelessWidget {
  ProductDetails({this.imagePath});

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 595,
      child: FirebaseImage(
        imgUrl: imagePath,
        imgHeight: 595,
        coverFit: false,
      ),
    );
  }
}
