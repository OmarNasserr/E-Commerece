import 'package:ecom/screens/addToCartScreen.dart';
import 'package:flutter/material.dart';
import 'package:ecom/consts/Ecommerce.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class FitSize extends StatelessWidget {
  FitSize(
      {this.size,
      this.itemPrice,
      this.itemId,
      this.itemName,
      this.itemColorNum});
  final String size;
  final double itemPrice;
  final int itemId;
  final String itemName;
  final String itemColorNum;

  //repeated item is a variable to determine the index of the itemID and find the corresponding
  //index in  the repeatedItems[] and fitSize[] arrays, so it's the link between the 3 arrays
  int repeatedItem;
  int item = 1;
  bool foundRepetition = false;
  void addItemTOWishToBuyList() {
    Ecommerce.idsAddedToList.add(itemId);
    Ecommerce.fitSize.add(size);
    Ecommerce.repeatedItems.add(item);
    Ecommerce.productNames.add(itemName);
    Ecommerce.productPrices.add(itemPrice);
    Ecommerce.productColorNum.add(itemColorNum);
  }

  AddToCart addToCart;
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onLongPress: () {
        Ecommerce.toast('click to choose fit');
      },
      onPressed: () {
        Ecommerce.toast('added to cart successfully');
        Navigator.pop(
          context,
        );
        Ecommerce.numOFProductsInCart++;
        Ecommerce.totalPrice = Ecommerce.totalPrice + itemPrice;
        //These conditions decide whether the item is new, repeated with the same fitSize or it's repeated with
        //different fitSize so it's going to be treated as a new item
        if (!Ecommerce.idsAddedToList.contains(itemId)) {
          addItemTOWishToBuyList();
          foundRepetition = true;
        } else {
          for (int i = 0; i < Ecommerce.idsAddedToList.length; i++) {
            if (Ecommerce.idsAddedToList[i] == itemId) {
              if (Ecommerce.fitSize[i] == size) {
                Ecommerce.repeatedItems[i]++;
                foundRepetition = true;
              }
            }
          }
        }
        if (foundRepetition == false) {
          addItemTOWishToBuyList();
        }
      },
      padding: EdgeInsets.all(0),
      child: Container(
        width: 300.0,
        height: 50.0,
        child: Center(
          child: Text(
            size,
            style: TextStyle(
              color: Colors.black,
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
