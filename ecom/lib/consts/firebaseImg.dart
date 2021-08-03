import 'dart:typed_data';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecom/consts/Ecommerce.dart';
import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart';

class FirebaseImage extends StatefulWidget {
  FirebaseImage({
    this.imgUrl,
    this.imgHeight,
    this.imgWidth,
    this.coverFit,
  });
  static const String id = 'imageScreen';
  final String imgUrl;
  final double imgHeight;
  final double imgWidth;
  final bool coverFit;
  @override
  _FirebaseImageState createState() => _FirebaseImageState(
        imgUrl,
        imgHeight,
        imgWidth,
        coverFit,
      );
}

class _FirebaseImageState extends State<FirebaseImage> {
  final String imageUrl;
  final double imgHeight;
  final double imgWidth;
  //bool to decide whether the photo will scaledown if true(for product photos) or fitHeight if false(for background photos)
  final bool coverFit;
  final FirebaseStorage storage = FirebaseStorage(
      // ignore: deprecated_member_use
      app: Firestore.instance.app,
      storageBucket: 'gs://omarnasserecom.appspot.com');

  Uint8List imageBytes;
  String errorMsg;

  _FirebaseImageState(
    this.imageUrl,
    this.imgHeight,
    this.imgWidth,
    this.coverFit,
  ) {
    if (!Ecommerce.imagesUrl.contains(imageUrl)) {
      storage.ref().child(imageUrl).getData(10000000).then((data) {
        this.setState(() {
          imageBytes = data;
          Ecommerce.imagesUrl.add(imageUrl);
          Ecommerce.repeatedImagesData.add(imageBytes);
        });
      }).catchError((e) => setState(() {
            errorMsg = e.error;
          }));
    } else {
      int indexOfImage = Ecommerce.imagesUrl.indexOf(imageUrl);
      imageBytes = Ecommerce.repeatedImagesData[indexOfImage];
    }
  }

  @override
  Widget build(BuildContext context) {
    var img = imageBytes != null
        ? coverFit
            ? Image.memory(
                imageBytes,
                fit: BoxFit.scaleDown,
              )
            : Image.memory(
                imageBytes,
                fit: BoxFit.fitHeight,
              )
        : Container(child: Center(child: CircularProgressIndicator()));

    return Container(
      height: imgHeight,
      width: imgWidth,
      color: Colors.white,
      child: img,
    );
  }
}
