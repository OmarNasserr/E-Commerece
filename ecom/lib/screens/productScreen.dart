import 'package:ecom/consts/bigProductCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ecom/consts/Arrow.dart';
import 'package:ecom/consts/cardRow.dart';
import 'package:flutter/rendering.dart';

//
//
//
//INITIALIZE A SCREEN OF PRODUCTS USING THE INFORMATION THE ADMIN GIVE TO THE CardRow CONSTRUCTOR
//WHICH PASSES INFORMATION TO THE cardRow CLASS
//
//
//
//

class ProductScreen extends StatefulWidget {
  static const String id = 'ProductScreen';
  @override
  _ProductScreenState createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  String description =
      'Relaxed fit trousers featuring an elastic waistband with adjustable drawstring. Front pockets and rear patch pocket detail. Faded effect. Cuffed elastic hems.';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'NEW IN',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 15.0,
          ),
        ),
        toolbarHeight: 45.0,
        backgroundColor: Colors.white,
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: CustArrow(),
        elevation: 0,
      ),
      body: ListView(
        children: [
          BigProductCard(
            image: 'productsPhotos/product5background.jpg',
            id: 5,
            itemsNumber: 6,
            piecesIds: [501, 502, 503, 504, 505, 506],
            piecesNames: [
              'POCKET OVERSHIRT',
              'RUBBERIZED TEXT SWEATSHIRT',
              'BASIC JOGGING PANTS',
              'TEXTURED WEAVE RIBBED SOCKS',
              'GRAY COMBINATION SNEAKERS',
              'WOOL BLEND KNIT HAT',
            ],
            piecesPrices: [49.90, 49.90, 39.90, 7.90, 69.90, 25.90],
            discount: [
              false,
              false,
              false,
              false,
              true,
              false,
            ],
            discountPercent: [
              0.0,
              0.0,
              0.0,
              0.0,
              0.25,
              0.0,
            ],
          ),
          BigProductCard(
            image: 'productsPhotos/product6background.jpg',
            id: 6,
            itemsNumber: 2,
            piecesIds: [601, 602],
            piecesNames: ['FAUX SUEDE OVERSHIRT', 'SEAM HIGH COLLAR SWEATER'],
            piecesPrices: [69.90, 59.90],
            discount: [false, false],
            discountPercent: [0.0, 0.0],
          ),
          CardRow(
            leftP: 15.0,
            rightP: 7.5,
            leftP2: 7.5,
            rightP2: 15.0,
            image: 'productsPhotos/product1.jpg',
            image2: 'productsPhotos/product2.jpg',
            text: 'FADED JOGGER TROUSERS',
            text2: 'FADED JOGGER TROUSERS',
            price: '49.90 USD',
            price2: '49.90 USD',
            itemColorNum: 'GREY - 1701/305',
            itemColorNum2: 'BEIGE - 1701/305',
            productDescription: description,
            productDescription2: description,
            id1: 1,
            id2: 2,
            itemPrice: 799.0,
            itemPrice2: 799.0,
            shoesFit: false,
            shoesFit2: false,
          ),
          SizedBox(
            height: 10.0,
          ),
          CardRow(
            leftP: 15.0,
            rightP: 7.5,
            leftP2: 7.5,
            rightP2: 15.0,
            image: 'productsPhotos/product3.jpg',
            image2: 'productsPhotos/product4.jpg',
            text: 'FADED JOGGER TROUSERS',
            text2: 'FADED JOGGER TROUSERS',
            price: '49.90 USD',
            price2: '49.90 USD',
            itemColorNum: 'BLACK - 1701/305',
            itemColorNum2: 'BLACK - 1701/305',
            productDescription: description,
            productDescription2: description,
            id1: 3,
            id2: 3,
            itemPrice: 799.0,
            itemPrice2: 799.0,
            shoesFit: false,
            shoesFit2: false,
          ),
          SizedBox(
            height: 20.0,
          ),
          BigProductCard(
            image: 'productsPhotos/product7background.jpg',
            id: 7,
            itemsNumber: 2,
            piecesIds: [701, 702],
            piecesNames: ['FLEECE TRAVELER JACKET', 'TRAVELER TECHNICAL PANTS'],
            piecesPrices: [
              119.00,
              69.90,
            ],
            discount: [
              false,
              false,
            ],
            discountPercent: [
              0.0,
              0.0,
            ],
          ),
        ],
      ),
    );
  }
}
