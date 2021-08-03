import 'package:ecom/consts/bigProductCard.dart';
import 'package:ecom/consts/productCard.dart';
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

class SecondProductScreen extends StatefulWidget {
  static const String id = 'SecondProductScreen';
  @override
  _SecondProductScreenState createState() => _SecondProductScreenState();
}

class _SecondProductScreenState extends State<SecondProductScreen> {
  String description =
      'Relaxed fit trousers featuring an elastic waistband with adjustable drawstring. Front pockets and rear patch pocket detail. Faded effect. Cuffed elastic hems.';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'SHOES AND BAGS',
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
          ProductCard(
            smallPic: false,
            image: 'productsPhotos/shoes/product8shoes.jpg',
            imgheight: 685,
            coverFit: false,
            id: 8,
            rightP: 0.0,
            leftP: 0.0,
            topP: 0.0,
            text: 'THICK SOLED LEATHER ANKLE BOOTS',
            price: '99.90 USD',
            itemColorNum: 'BLACK - 2082/620',
            productDescription:
                'Leather Chelsea ankle boots. Beige. Elastic goring and back pull tab provide an easier fit. Thick lug soles. Leather insole. ',
            itemPrice: 99.90,
            shoesFit: true,
          ),
          SizedBox(
            height: 10.0,
          ),
          CardRow(
            leftP: 15.0,
            rightP: 7.5,
            leftP2: 7.5,
            rightP2: 15.0,
            image: 'productsPhotos/shoes/product13shoes.jpg',
            image2: 'productsPhotos/shoes/product12shoes.jpg',
            text: 'SOCK-STYLE HIGH TOP SNEAKERS',
            text2: 'FABRIC KNIT HIGH TOP SNEAKERS',
            price: '59.90 USD',
            price2: '59.90 USD',
            itemColorNum: 'BLACK - 2102/620',
            itemColorNum2: 'BLACK - 2101/620',
            productDescription:
                'Laceless technical fabric high top sneakers. Single piece sock style wraparound upper. Gold appliqué at heel. Thick-soled.',
            productDescription2:
                'Laceless sneakers in technical fabric knit. Black. Single piece sock style wraparound upper. Thick soles in a combination of colors with dégradé effect.',
            id1: 13,
            id2: 12,
            itemPrice: 59.90,
            itemPrice2: 59.90,
            shoesFit: true,
            shoesFit2: true,
          ),
          SizedBox(
            height: 20.0,
          ),
          ProductCard(
            smallPic: false,
            image: 'productsPhotos/shoes/product10shoes.jpg',
            imgheight: 685,
            coverFit: false,
            id: 10,
            rightP: 0.0,
            leftP: 0.0,
            topP: 0.0,
            text: 'SPLIT LEATHER ANKLE BOOTS',
            price: '99.90 USD',
            itemColorNum: 'BEIGE - 2002/620',
            productDescription:
                'Chelsea style ankle boots with elastic goring at sides. Made of split leather. Available in different colors. Side goring and back pull tab for ease. Rounded shape. Rimmed soles.',
            itemPrice: 99.90,
            shoesFit: true,
          ),
          SizedBox(
            height: 10.0,
          ),
          CardRow(
            leftP: 15.0,
            rightP: 7.5,
            leftP2: 7.5,
            rightP2: 15.0,
            image: 'productsPhotos/shoes/product9shoes.jpg',
            image2: 'productsPhotos/shoes/product15shoes.jpg',
            text: 'BLACK HIGH TOP SNEAKERS',
            text2: 'THICK SOLE LEATHER BOOTS',
            price: '59.90 USD',
            price2: '99.90 USD',
            itemColorNum: 'BLACK - 2107/620',
            itemColorNum2: 'BLACK - 2017/620',
            productDescription:
                'High top sneakers with black laces. Outsole detail in contrasting material. Lacing with six pairs of eyelets. Pull tab at tongue. Black soles.',
            productDescription2:
                'Laced leather boots in black. Laces with seven eyelets and back pull tab for ease. Thick treaded soles.',
            id1: 9,
            id2: 15,
            itemPrice: 59.90,
            itemPrice2: 99.90,
            shoesFit: true,
            shoesFit2: true,
          ),
          CardRow(
            leftP: 15.0,
            rightP: 7.5,
            leftP2: 7.5,
            rightP2: 15.0,
            image: 'productsPhotos/shoes/product14shoes.jpg',
            image2: 'productsPhotos/shoes/product16shoes.jpg',
            text: 'MULTICOLOR THICK-SOLED SNEAKERS',
            text2: 'SAND COLOR RUNNING SHOES',
            price: '69.90 USD',
            price2: '59.90 USD',
            itemColorNum: 'MULTI-COLOR - 2228/620',
            itemColorNum2: 'MULTI-COLOR - 2213/720',
            productDescription:
                'Lace-up sneakers. Lacing with seven pairs of eyelets. Combination of colors at upper in different shades of brown, blue and white. Thick soles in light brown, blue and black.',
            productDescription2:
                'Multicolor sneakers. Upper in a combination of leather pieces and other materials in sand tones. Lace closure. Contrasting colored bottoms.',
            id1: 14,
            id2: 16,
            itemPrice: 69.90,
            itemPrice2: 59.90,
            shoesFit: true,
            shoesFit2: true,
          ),
          CardRow(
            leftP: 15.0,
            rightP: 7.5,
            leftP2: 7.5,
            rightP2: 15.0,
            image: 'productsPhotos/shoes/product17shoes.jpg',
            image2: 'productsPhotos/shoes/product18shoes.jpg',
            text: 'CORDUROY THICK-SOLED SNEAKERS',
            text2: 'MULTI-PIECE RUNNING SHOES',
            price: '89.90 USD',
            price2: '69.90 USD',
            itemColorNum: 'MULTI-COLOR - 2243/620',
            itemColorNum2: 'MULTI-COLOR - 2219/520',
            productDescription:
                'Lace-up sneakers. Lacing with six pairs of eyelets. Combination of materials at upper with split leather and corduroy pieces in tonal browns. Thick white soles with treaded caramel outsole.',
            productDescription2:
                'Lace-up sneakers. Available in different colors. Upper in a combination of pieces and materials. Lacing with seven pairs of eyelets and back pull tab. Thick-soled.',
            id1: 17,
            id2: 18,
            itemPrice: 89.90,
            itemPrice2: 69.90,
            shoesFit: true,
            shoesFit2: true,
          ),
          SizedBox(
            height: 20.0,
          ),
          ProductCard(
            smallPic: false,
            image: 'productsPhotos/shoes/product11shoes.jpg',
            imgheight: 540,
            coverFit: false,
            id: 11,
            rightP: 0.0,
            leftP: 0.0,
            topP: 0.0,
            text: 'LEATHER SNEAKERS',
            price: '89.90 USD',
            itemColorNum: 'WHITE - 2236/620',
            productDescription:
                'Casual lace-up sneakers. Made of leather. Available in white and black. Seam detail at sides and back. Leather interior lining. Contrasting color vulcanized rubber sole.',
            itemPrice: 89.90,
            shoesFit: true,
          ),
        ],
      ),
    );
  }
}
