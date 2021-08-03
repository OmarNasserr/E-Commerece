import 'package:flutter/material.dart';
import 'package:ecom/consts/productCard.dart';

//
//
//INITIALIZE A ROW OF 2 PRODUCTS AND MAKE SURE EACH PRODUCT IN EVERY ROW HAS IT'S OWN INFORMATION
//WHICH IS GIVEN BY THE productScreen CLASS AND THEN PASS ALL THE  INFORMATION
//THEN PASS ALL THE  INFORMATION TO THE productCard CLASS WHICH INITIALIZE EACH CARD
//BY IT'S OWN INFORMATION
//
//
//

class CardRow extends StatelessWidget {
  CardRow(
      {this.leftP,
      this.rightP,
      this.image,
      this.text,
      this.price,
      this.leftP2,
      this.rightP2,
      this.image2,
      this.text2,
      this.price2,
      this.id1,
      this.id2,
      this.itemColorNum,
      this.itemColorNum2,
      this.productDescription,
      this.productDescription2,
      this.itemPrice,
      this.itemPrice2,
      this.shoesFit,
      this.shoesFit2});
  final double leftP;
  final double leftP2;
  final double rightP;
  final double rightP2;
  final String image;
  final String image2;
  final String text;
  final String text2;
  final String price;
  final String price2;
  final String itemColorNum;
  final String itemColorNum2;
  final String productDescription;
  final String productDescription2;
  final int id1;
  final int id2;
  final double itemPrice;
  final double itemPrice2;
  final bool shoesFit;
  final bool shoesFit2;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Expanded(
          child: ProductCard(
            leftP: leftP,
            rightP: rightP,
            image: image,
            text: text,
            price: price,
            itemColorNum: itemColorNum,
            productDescription: productDescription,
            id: id1,
            itemPrice: itemPrice,
            shoesFit: shoesFit,
          ),
        ),
        Expanded(
          child: ProductCard(
            leftP: leftP2,
            rightP: rightP2,
            image: image2,
            text: text2,
            price: price2,
            itemColorNum: itemColorNum2,
            productDescription: productDescription2,
            id: id2,
            itemPrice: itemPrice2,
            shoesFit: shoesFit2,
          ),
        ),
      ],
    );
  }
}
