import 'package:ecom/consts/Ecommerce.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ecom/consts/WishToBuyAddedToCartProducts.dart';

// ignore: must_be_immutable
class AddToCart extends StatelessWidget {
  Widget productsNumText(int num) {
    String productsOrProduct;
    num == 1 ? productsOrProduct = 'product' : productsOrProduct = 'products';

    return Padding(
      padding: const EdgeInsets.only(
        left: 20.0,
        top: 10.0,
        bottom: 20.0,
      ),
      child: Opacity(
        opacity: 0.5,
        child: Text(
          '$num $productsOrProduct',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 12.0,
          ),
        ),
      ),
    );
  }

  List<WishToBuyList> wishToBuyLists = List<WishToBuyList>();
  WishToBuyList wishToBuyList;

  List<Widget> wishToBuyWidgets(
      List<int> idsAddedToList,
      List<String> sizes,
      List<int> repeatedItems,
      List<String> productNames,
      List<String> productColorNum,
      List<double> productPrices) {
    for (int i = 0; i < idsAddedToList.length; i++) {
      if (idsAddedToList[i] < 500) {
        wishToBuyList = WishToBuyList(
          imagePath:
              'productsPhotos/product${idsAddedToList[i]}details/img1.jpg',
          itemName: productNames[i],
          itemColorNum: productColorNum[i],
          productPrice: productPrices[i].toString(),
          sizeId: sizes[i],
          itemPrice: productPrices[i],
          numOfRepeat: repeatedItems[i],
        );
        wishToBuyLists.add(wishToBuyList);
      } else {
        int idHolder = idsAddedToList[i] ~/ 100;
        int imageNumHolder = (idsAddedToList[i] % 10).toInt();
        print('idHOLDERRR $idHolder');
        print('imageNumberHolder $imageNumHolder');
        wishToBuyList = WishToBuyList(
          imagePath:
              'productsPhotos/product${idHolder}details/img$imageNumHolder.jpg',
          itemName: productNames[i],
          itemColorNum: productColorNum[i],
          productPrice: productPrices[i].toString(),
          sizeId: sizes[i],
          itemPrice: productPrices[i],
          numOfRepeat: repeatedItems[i],
        );
        wishToBuyLists.add(wishToBuyList);
      }
    }
    return wishToBuyLists;
  }

  List<WishToBuyList> wishToBuyItems = List<WishToBuyList>();
  WishToBuyList wishToBuyItem;
  List<Widget> wishToBuyItemsWidgets(
      List<int> idsAddedToList,
      List<String> sizes,
      List<int> repeatedItems,
      List<String> productNames,
      List<String> productColorNum,
      List<double> productPrices) {
    for (int i = 0; i < idsAddedToList.length; i++) {
      wishToBuyList = WishToBuyList(
        imagePath: 'productsPhotos/product${idsAddedToList[i]}details/img1.jpg',
        itemName: productNames[i],
        itemColorNum: productColorNum[i],
        productPrice: productPrices[i].toString(),
        sizeId: sizes[i],
        itemPrice: productPrices[i],
        numOfRepeat: repeatedItems[i],
      );
      wishToBuyLists.add(wishToBuyList);
    }
    return wishToBuyItems;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: FlatButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.close,
            color: Colors.black,
          ),
        ),
        elevation: 0.0,
        backgroundColor: Colors.white,
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 20.0,
                top: 10.0,
              ),
              child: Text(
                'SHOPPING CART',
                style: GoogleFonts.almarai(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            productsNumText(Ecommerce.numOFProductsInCart),
            Container(
              height: 475.0,
              color: Colors.white,
              child: ListView(
                children: wishToBuyWidgets(
                    Ecommerce.idsAddedToList,
                    Ecommerce.fitSize,
                    Ecommerce.repeatedItems,
                    Ecommerce.productNames,
                    Ecommerce.productColorNum,
                    Ecommerce.productPrices),
              ),
            ),
            Container(
              height: 1.0,
              color: Color(0xFFB0B0B0),
            ),
            Container(
              height: 122.0,
              width: 360.0,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Column(
                  children: [
                    Text(
                      'Total ${Ecommerce.totalPrice.toStringAsFixed(2)} USD',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    SizedBox(
                      height: 7.0,
                    ),
                    Text(
                      'VAT not included',
                      style: TextStyle(
                        fontSize: 10.0,
                        color: Colors.grey,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    FlatButton(
                      onPressed: () {},
                      padding: EdgeInsets.all(0.0),
                      child: Container(
                        color: Colors.black,
                        height: 38.0,
                        width: 320.0,
                        child: Center(
                          child: Text(
                            'BUY',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
