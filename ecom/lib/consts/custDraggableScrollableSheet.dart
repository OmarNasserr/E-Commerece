import 'package:ecom/screens/addToCartScreen.dart';
import 'package:flutter/material.dart';
import 'package:ecom/consts/Ecommerce.dart';
import 'package:ecom/consts/AddButtonUnderProducts.dart';

class ProductDraggableSheet extends StatelessWidget {
  const ProductDraggableSheet({
    @required this.itemName,
    @required this.productPrice,
    @required this.itemColorNum,
    @required this.productDescription,
    @required this.itemPrice,
    @required this.shoesFit,
    @required this.itemId,
  });

  final String itemName;
  final String productPrice;
  final String itemColorNum;
  final String productDescription;
  final double itemPrice;
  final int itemId;
  final bool shoesFit;

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.25,
      minChildSize: 0.18,
      maxChildSize: 0.4,
      builder: (context, scrollController) {
        return Container(
          color: Colors.white,
          child: MediaQuery.removePadding(
            removeTop: true,
            context: context,
            child: ListView.builder(
                controller: scrollController,
                itemCount: 1,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 15.0,
                        top: 22.0,
                      ),
                      child: Column(
                        children: [
                          //ROW CONTAIN DESCRIPTION,TEXT,ICON ARROW DOWN
                          Row(
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                  width: 189.0,
                                  child: Text(
                                    itemName,
                                    overflow: TextOverflow.fade,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 15.0,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 121.0,
                              ),
                              // Text(
                              //   '2 more colors',
                              // ),
                              GestureDetector(
                                onTap: () {
                                  scrollController = ScrollController(
                                      initialScrollOffset: 0.3);
                                },
                                child: Icon(
                                  Icons.arrow_downward,
                                  size: 16.0,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 0.8,
                          ),
                          //PRODUCT PRICE
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              productPrice,
                              style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          ////////////////////
                          ////////////////////
                          //ROW CONTAINS ADD BUTTON,AND 3 ICONS(SHARE,BOOKMARK,SHOPPING BAG)
                          Row(
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: AddButtonUnderProducts(
                                  itemPrice: itemPrice,
                                  itemId: itemId,
                                  itemColorNum: itemColorNum,
                                  itemName: itemName,
                                  shoesFit: shoesFit,
                                ),
                              ),
                              SizedBox(
                                width: 95.0,
                              ),
                              Icon(Icons.ios_share),
                              SizedBox(
                                width: 20.0,
                              ),
                              Icon(
                                Icons.bookmark_border_sharp,
                              ),
                              SizedBox(
                                width: 20.0,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => AddToCart(),
                                    ),
                                  );
                                },
                                child: Stack(children: [
                                  Icon(
                                    Icons.shopping_bag_outlined,
                                    size: 25.0,
                                  ),
                                  Container(
                                      height: 30.0,
                                      width: 25.0,
                                      child: Center(
                                        child: Text(
                                          Ecommerce.numOFProductsInCart
                                              .toString(),
                                          style: TextStyle(
                                            fontSize: 10.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      )),
                                ]),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 35.0,
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              itemColorNum,
                              style: TextStyle(
                                fontSize: 15.0,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          Text(
                            productDescription,
                            style: TextStyle(
                              fontSize: 15.0,
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                }),
          ),
        );
      },
    );
  }
}
