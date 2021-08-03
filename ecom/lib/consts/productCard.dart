import 'package:ecom/consts/Ecommerce.dart';
import 'package:ecom/screens/specificProductInfo.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ecom/consts/firebaseImg.dart';

//
//
//
//INITIALIZE A CARD WHICH HAS PRODUCT ITEM IMAGE AND DESCRIPTION TEXT
// AND PASSES THE REQUIRED INFO TO THE cardRow CLASS TO INITIALIZE A ROW OF
// TWO CARDS EACH HAS IT'S OWN DATA
//
// WHEN CLICKED IT PASSES
//1-PRODUCT'S ID WHICH DECIDE WHICH DIRECTORY NUM HAS THIS PRODUCT INFO(IMAGES)
//2-PRODUCT DESCRIPTION,AND ITEM COLOR DESCRIPTION AND NUMBER
//3-PRODUCT PRICE
//AND IT PASSES ALL OF THESE INFORMATION TO specificProductInfo CLASS
//
//
// ignore: must_be_immutable
class ProductCard extends StatelessWidget {
  ProductCard({
    this.leftP,
    this.rightP,
    this.image,
    this.text,
    this.price,
    this.id,
    this.productDescription,
    this.itemColorNum,
    this.itemPrice,
    this.imgheight = 250.0,
    this.coverFit = true,
    this.topP = 5.0,
    this.smallPic = true,
    this.shoesFit = false,
  });
  final double leftP;
  final double rightP;
  final double topP;
  final String image;
  final String text;
  final String price;
  final String itemColorNum;
  final String productDescription;
  final int id;
  final double itemPrice;
  final double imgheight;
  final bool coverFit;
  final bool smallPic;
  final bool shoesFit;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: topP,
        right: rightP,
        left: leftP,
      ),
      child: FlatButton(
        padding: EdgeInsets.all(0.0),
        onLongPress: () {
          Ecommerce.toast('Click to Shop');
        },
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SpecificProduct(
                itemId: id,
                productPrice: price,
                itemName: text,
                productDescription: productDescription,
                itemColorNum: itemColorNum,
                itemPrice: itemPrice,
                shoesFit: shoesFit,
              ),
            ),
          );
        },
        child: smallPic
            ? Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  FirebaseImage(
                    imgUrl: image,
                    coverFit: coverFit,
                    imgHeight: imgheight,
                  ),
                  SizedBox(
                    height: 13.0,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'NEW / +2 COLOURS',
                      textAlign: TextAlign.start,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      text,
                      textAlign: TextAlign.start,
                      style: TextStyle(fontSize: 12.0),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      price,
                      style: TextStyle(fontSize: 11.0),
                    ),
                  ),
                ],
              )
            : FirebaseImage(
                imgUrl: image,
                coverFit: coverFit,
                imgHeight: imgheight,
              ),
      ),
    );
  }
}
