import 'package:flutter/material.dart';
import 'package:ecom/consts/FitSizeSheetWhenClickAddBtn.dart';
import 'package:ecom/consts/Ecommerce.dart';

// ignore: must_be_immutable
class AddButtonUnderProducts extends StatelessWidget {
  AddButtonUnderProducts(
      {Key key,
      @required this.itemPrice,
      @required this.itemId,
      this.itemName,
      this.itemColorNum,
      this.shoesFit = false})
      : super(key: key);

  final double itemPrice;
  final int itemId;
  final String itemName;
  final String itemColorNum;
  final bool shoesFit;

  List<String> fitSizes = [];
  List<String> fitClothesSizes = ['S', 'M', 'L', 'XL'];
  List<String> fitShoesSizes = ['41', '42', '43', '44'];

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      padding: EdgeInsets.all(0),
      onLongPress: () {
        Ecommerce.toast('click to add to cart');
      },
      onPressed: () {
        print('piecePrice $itemPrice');
        print('pieceID $itemId');
        print('pieceName $itemName');
        print('pieceColorNum $itemColorNum');
        showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          isDismissible: true,
          backgroundColor: Colors.transparent,
          builder: (context) => Padding(
            padding: const EdgeInsets.only(
              left: 20.0,
              right: 20.0,
            ),
            child: DraggableScrollableSheet(
              initialChildSize: 0.4,
              minChildSize: 0.2,
              maxChildSize: 0.4,
              builder: (context, scrollController) {
                return Container(
                  color: Colors.white,
                  child: ListView.builder(
                    itemCount: 1,
                    controller: scrollController,
                    itemBuilder: (context, index) {
                      shoesFit
                          ? fitSizes = fitShoesSizes
                          : fitSizes = fitClothesSizes;
                      return Column(
                        children: [
                          SizedBox(
                            height: 25.0,
                          ),
                          FitSize(
                            size: fitSizes[0],
                            itemPrice: itemPrice,
                            itemId: itemId,
                            itemName: itemName,
                            itemColorNum: itemColorNum,
                          ),
                          FitSize(
                            size: fitSizes[1],
                            itemPrice: itemPrice,
                            itemId: itemId,
                            itemName: itemName,
                            itemColorNum: itemColorNum,
                          ),
                          FitSize(
                            size: fitSizes[2],
                            itemPrice: itemPrice,
                            itemId: itemId,
                            itemName: itemName,
                            itemColorNum: itemColorNum,
                          ),
                          FitSize(
                            size: fitSizes[3],
                            itemPrice: itemPrice,
                            itemId: itemId,
                            itemName: itemName,
                            itemColorNum: itemColorNum,
                          ),
                          SizedBox(height: 15.0),
                          Container(
                            width: 300.0,
                            height: 1.0,
                            color: Colors.grey,
                          ),
                          SizedBox(height: 15.0),
                          Text(
                            'CHOOSE YOUR SIZE',
                            style: TextStyle(
                                fontWeight: FontWeight.w300, fontSize: 15.0),
                          )
                        ],
                      );
                    },
                  ),
                );
              },
            ),
          ),
        );
      },
      child: Container(
        height: 35.0,
        width: 120.0,
        child: Center(
            child: Text(
          'ADD',
          style: TextStyle(
            fontWeight: FontWeight.w900,
            fontSize: 15.0,
          ),
        )),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
        ),
      ),
    );
  }
}
