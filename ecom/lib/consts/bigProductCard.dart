import 'package:ecom/consts/Ecommerce.dart';
import 'package:ecom/screens/bigProductInfo.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ecom/consts/firebaseImg.dart';

//
//
//
//INITIALIZE A CARD WHICH HAS A BIG PRODUCT ITEM IMAGE
//
// WHEN CLICKED IT PASSES
//1-PRODUCT'S ID WHICH DECIDE WHICH DIRECTORY NUM HAS THIS PRODUCT INFO(IMAGES)
//2-PRODUCT DESCRIPTION,AND ITEM COLOR DESCRIPTION AND NUMBER
//3-PRODUCT PRICE
//AND IT PASSES ALL OF THESE INFORMATION TO specificProductInfo CLASS
//
//
// ignore: must_be_immutable
class BigProductCard extends StatelessWidget {
  BigProductCard({
    this.image,
    this.id,
    this.itemsNumber,
    this.piecesNames,
    this.piecesPrices,
    this.discount,
    this.discountPercent,
    this.piecesIds,
  });
  final String image;
  final int id;
  final int itemsNumber;
  final List<String> piecesNames;
  final List<double> piecesPrices;
  final List<bool> discount;
  final List<double> discountPercent;
  final List<int> piecesIds;
  bool ixixxxi;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      padding: EdgeInsets.all(0.0),
      onLongPress: () {
        Ecommerce.toast('Click to Shop');
      },
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => BigProductInfo(
                    image: image,
                    itemId: id,
                    itemsNumber: itemsNumber,
                    piecesNames: piecesNames,
                    piecesPrices: piecesPrices,
                    discount: discount,
                    discountPercent: discountPercent,
                    pieceIds: piecesIds,
                  )),
        );
      },
      child: FirebaseImage(
        imgUrl: image,
        coverFit: false,
        imgHeight: 685.0,
        imgWidth: double.infinity,
      ),
    );
  }
}
