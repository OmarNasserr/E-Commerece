import 'package:ecom/consts/productDetails.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ecom/consts/custDraggableScrollableSheet.dart';

// ignore: must_be_immutable
class SpecificProduct extends StatelessWidget {
  SpecificProduct({
    this.itemId,
    this.itemName,
    this.productPrice,
    this.productDescription,
    this.itemColorNum,
    this.itemPrice,
    this.shoesFit,
  });

  //NUMBER OF THE DIRECTORY THAT THE PRODUCT ITEM BELONGS TO
  final int itemId;
  //NUM OF PRODUCTS IN CART WHICH APPEAR IN SHOPPING BAG ICON
  //HOLDS Item Name
  final String itemName;
  //HOLDS PRODUCT DESCRIPTION
  final String productPrice;
  final String itemColorNum;
  final String productDescription;
  final double itemPrice;
  final bool shoesFit;

  List<ProductDetails> productDetails = List<ProductDetails>();
  ProductDetails pDetails;

  List<Widget> productDetailsWidget(int productDirectoryNum) {
    for (int i = 0; i < 5; i++) {
      pDetails = ProductDetails(
          imagePath:
              'productsPhotos/product${productDirectoryNum}details/img${i + 1}.jpg');
      productDetails.add(pDetails);
    }
    return productDetails;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            height: 623,
            child: ListView(
              children: productDetailsWidget(itemId),
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
          //CUSTOM CLASS TO CREATE A DRAGGABLE_SCROLLABLE_SHEET WIDGET
          ProductDraggableSheet(
            itemName: itemName,
            productPrice: productPrice,
            itemColorNum: itemColorNum,
            productDescription: productDescription,
            itemPrice: itemPrice,
            itemId: itemId,
            shoesFit: shoesFit,
          ),
        ],
      ),
    );
  }
}
