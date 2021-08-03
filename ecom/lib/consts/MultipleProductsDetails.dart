import 'package:ecom/consts/firebaseImg.dart';
import 'package:flutter/material.dart';

//
//
//USED TO SET THE PROPERTIES OF THE PRODUCT WITH MULTIPLE PHOTOS
//
//
//
class MultipleProductsDetails extends StatelessWidget {
  MultipleProductsDetails(
      {this.imagePath,
      this.pieceName,
      this.piecePrice,
      this.discountPercent,
      this.discount,
      this.pieceId});

  final String imagePath;
  final String pieceName;
  final double piecePrice;
  final bool discount;
  final double discountPercent;
  final int pieceId;

  Widget discountOrNotText(bool discount, double discountPercent) {
    double discountedPrice = piecePrice - (piecePrice * discountPercent);
    return discount
        ? Container(
            height: 20.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '$piecePrice USD',
                    style: TextStyle(
                      fontSize: 12.0,
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                ),
                SizedBox(width: 5.0),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '${discountedPrice.toStringAsFixed(2)} USD',
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.red,
                    ),
                  ),
                ),
                SizedBox(width: 5.0),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    height: 15.0,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 1.0)),
                    child: Text(
                      '-${discountPercent * 100}%',
                      style: TextStyle(
                        fontSize: 12.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        : Align(
            alignment: Alignment.centerLeft,
            child: Text(
              '$piecePrice USD',
              style: TextStyle(
                fontSize: 12.0,
              ),
            ),
          );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 370,
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: FirebaseImage(
              imgUrl: imagePath,
              imgHeight: 345,
              coverFit: true,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              pieceName,
              style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          discountOrNotText(discount, discountPercent),
        ],
      ),
    );
  }
}
