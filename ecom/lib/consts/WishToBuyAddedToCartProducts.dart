import 'package:ecom/consts/firebaseImg.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//
//
//USED TO SET THE PROPERTIES OF THE ALREADY CHOSEN PRODUCTS PHOTOS
//
//
//
class WishToBuyList extends StatelessWidget {
  WishToBuyList(
      {this.imagePath,
      this.productPrice,
      this.itemName,
      this.itemColorNum,
      this.sizeId,
      this.numOfRepeat,
      this.itemPrice});

  final String imagePath;
  final String itemName;
  final String productPrice;
  final String itemColorNum;
  final String sizeId;
  final int numOfRepeat;
  final double itemPrice;

  Widget repeat() {
    double totalItemPrice = numOfRepeat * itemPrice;
    if (numOfRepeat == 1) {
      return Column(
        children: [
          SizedBox(height: 80.0),
          Container(
            alignment: Alignment.centerLeft,
            width: 190,
            child: Text(
              '$productPrice USD',
              style: TextStyle(fontWeight: FontWeight.w400),
            ),
          ),
        ],
      );
    } else {
      return Container(
        alignment: Alignment.centerLeft,
        child: Column(
          children: [
            SizedBox(height: 58.0),
            Container(
              width: 190,
              child: Text(
                '$numOfRepeat x $productPrice',
                style: TextStyle(color: Colors.grey, fontSize: 13.0),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Container(
              alignment: Alignment.centerLeft,
              width: 190,
              child: Text(
                '${totalItemPrice.toStringAsFixed(1)} USD',
                style: TextStyle(fontWeight: FontWeight.w400),
              ),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 15.0),
          child: Container(
            height: 190,
            width: 155,
            child: FirebaseImage(
              imgUrl: imagePath,
              imgHeight: 300.0,
              imgWidth: 200.0,
              coverFit: true,
            ),
          ),
        ),
        Container(
          height: 180.0,
          width: 205,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    itemName,
                    overflow: TextOverflow.ellipsis,
                    style:
                        TextStyle(fontSize: 15.0, fontWeight: FontWeight.w900),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: Container(
                  alignment: Alignment.centerLeft,
                  width: 190.0,
                  child: Opacity(
                    opacity: 0.3,
                    child: Text(
                      itemColorNum,
                      style: TextStyle(
                          fontSize: 11.0,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 15.0,
                ),
                child: Container(
                  width: 190.0,
                  child: Text(
                    sizeId,
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w900,
                        color: Colors.black),
                  ),
                ),
              ),
              repeat(),
            ],
          ),
        )
      ]),
    );
  }
}
