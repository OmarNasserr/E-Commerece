import 'package:ecom/consts/AddButtonUnderProducts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Ecommerce.dart';
import 'package:ecom/consts/MultipleProductsDetails.dart';
import 'package:ecom/screens/addToCartScreen.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class BigProductDraggableSheet extends StatefulWidget {
  BigProductDraggableSheet(
      {this.itemId,
      this.itemsNumber,
      this.piecesNames,
      this.piecesPrices,
      this.discount,
      this.discountPercent,
      this.piecesIds});
  final int itemId;
  final int itemsNumber;
  final List<String> piecesNames;
  final List<double> piecesPrices;
  final List<bool> discount;
  final List<double> discountPercent;
  final List<int> piecesIds;

  @override
  _BigProductDraggableSheetState createState() =>
      _BigProductDraggableSheetState(
          itemsNumber: itemsNumber,
          piecesNames: piecesNames,
          piecesPrices: piecesPrices,
          discount: discount,
          discountPercent: discountPercent,
          piecesIds: piecesIds);
}

class _BigProductDraggableSheetState extends State<BigProductDraggableSheet> {
  _BigProductDraggableSheetState(
      {this.itemId,
      this.itemsNumber,
      this.piecesNames,
      this.piecesPrices,
      this.discount,
      this.discountPercent,
      this.piecesIds});
  final int itemId;
  final int itemsNumber;
  final List<String> piecesNames;
  final List<double> piecesPrices;
  final List<bool> discount;
  final List<double> discountPercent;
  final List<int> piecesIds;
  double piecePrice;

  int pieceId;

  String pieceName;

  int indexx = 1;

  ScrollController controller = PageController(
    viewportFraction: 1 / 1.5,
  );

  List<MultipleProductsDetails> multipleProductsDetails =
      List<MultipleProductsDetails>();

  MultipleProductsDetails multipleProductsDetail;

  List<Widget> multipleProductImages(
    int productDirectoryNum,
    int itemsNumber,
  ) {
    for (int i = 0; i < itemsNumber; i++) {
      multipleProductsDetail = MultipleProductsDetails(
        imagePath:
            'productsPhotos/product${productDirectoryNum}details/img${i + 1}.jpg',
        discount: widget.discount[i],
        discountPercent: widget.discountPercent[i],
        pieceName: widget.piecesNames[i],
        piecePrice: widget.piecesPrices[i],
      );
      multipleProductsDetails.add(multipleProductsDetail);
    }
    return multipleProductsDetails;
  }

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.25,
      minChildSize: 0.18,
      maxChildSize: 0.75,
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
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 58.0,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 15.0),
                                child: Text(
                                  widget.itemsNumber == 1
                                      ? '${widget.itemsNumber} PRODUCT'
                                      : '${widget.itemsNumber} PRODUCTS',
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w900),
                                ),
                              ),
                              SizedBox(
                                width: 160.0,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 8.0),
                                child: Icon(
                                  Icons.ios_share,
                                  size: 24.0,
                                ),
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
                        ),
                        CarouselSlider.builder(
                          itemCount: widget.itemsNumber,
                          itemBuilder: (BuildContext context, int itemIndex) =>
                              MultipleProductsDetails(
                            imagePath:
                                'productsPhotos/product${widget.itemId}details/img${itemIndex + 1}.jpg',
                            discount: widget.discount[itemIndex],
                            discountPercent: widget.discountPercent[itemIndex],
                            pieceName: widget.piecesNames[itemIndex],
                            piecePrice: widget.piecesPrices[itemIndex],
                          ),
                          options: CarouselOptions(
                              height: 396,
                              initialPage: 0,
                              enableInfiniteScroll: false,
                              autoPlay: true,
                              autoPlayAnimationDuration:
                                  Duration(milliseconds: 1000),
                              viewportFraction: 0.75,
                              autoPlayInterval: Duration(seconds: 2),
                              onPageChanged: (index, reason) {
                                setState(() {
                                  pieceId = piecesIds[index];
                                  piecePrice = piecesPrices[index];
                                  pieceName = piecesNames[index];
                                });
                              }),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 44.0),
                          child: AddButtonUnderProducts(
                            itemPrice: piecePrice,
                            itemId: pieceId,
                            itemName: pieceName,
                            itemColorNum: '',
                          ),
                        )
                      ],
                    ),
                  );
                }),
          ),
        );
      },
    );
  }
}
