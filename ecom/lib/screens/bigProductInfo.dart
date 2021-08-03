import 'package:ecom/consts/bigDraggableScrollableSheet.dart';
import 'package:ecom/consts/firebaseImg.dart';
import 'package:flutter/material.dart';

class BigProductInfo extends StatelessWidget {
  BigProductInfo(
      {this.image,
      this.itemId,
      this.itemsNumber,
      this.piecesPrices,
      this.piecesNames,
      this.discount,
      this.discountPercent,
      this.pieceIds});
  final String image;
  final int itemId;
  final int itemsNumber;
  final List<String> piecesNames;
  final List<double> piecesPrices;
  final List<bool> discount;
  final List<double> discountPercent;
  final List<int> pieceIds;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            height: 623,
            child: FirebaseImage(
              imgUrl: image,
              imgHeight: 600.0,
              imgWidth: double.infinity,
              coverFit: false,
            ),
          ),
          Positioned(
            top: 60.0,
            left: 15.0,
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              padding: EdgeInsets.all(0),
              icon: Icon(
                Icons.close,
                size: 30.0,
                color: Colors.white,
              ),
            ),
          ),
          //
          // //CUSTOM CLASS TO CREATE A DRAGGABLE_SCROLLABLE_SHEET WIDGET
          BigProductDraggableSheet(
            itemId: itemId,
            itemsNumber: itemsNumber,
            piecesNames: piecesNames,
            piecesPrices: piecesPrices,
            discountPercent: discountPercent,
            discount: discount,
            piecesIds: pieceIds,
          ),
        ],
      ),
    );
  }
}
