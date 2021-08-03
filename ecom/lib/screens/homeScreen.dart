import 'package:ecom/screens/2ndProductScreen.dart';
import 'package:ecom/screens/productScreen.dart';
import 'package:ecom/video.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'file:///D:/Flutter/training%20apps/ecom/lib/consts/backgroundContainer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';

class Home extends StatefulWidget {
  static const String id = 'HomeScreen';
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: SideDrawer(),
      appBar: AppBar(
        title: Text(
          'ECOM20',
          style: GoogleFonts.asset(
            color: Colors.black,
          ),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.black,
          ),
          onPressed: () {
            _scaffoldKey.currentState.openDrawer();
          },
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          // VideoPlayerScreen(
          //     'https://firebasestorage.googleapis.com/v0/b/omarnasserecom.appspot.com/o/Videos%2FZara%20Fall%20Collection.mp4?alt=media&token=03853af8-6afd-4a06-93aa-717520f3878c'),
          BackgroundContainer(
            imagePath: 'backgroundPhotos/background1.jpg',
            boxLtext: 'VIEW',
            boxStext: 'new collection',
            text: 'NEW IN',
            text2: "explore latest fall men collection",
            tap: () {
              Navigator.pushNamed(context, ProductScreen.id);
            },
          ),
          BackgroundContainer(
            imagePath: 'backgroundPhotos/background2.jpg',
            boxLtext: 'NEW',
            boxStext: 'in store',
            text: 'COLLECTION',
            text2: "explore latest winter men collection",
            textSize: 50.0,
            textBoxSize: 80.0,
            tap: () {
              Navigator.pushNamed(context, SecondProductScreen.id);
            },
          ),
          BackgroundContainer(
            imagePath: 'backgroundPhotos/background5.jpg',
            boxLtext: 'SPECIAL',
            boxStext: 'PRICES',
            text: 'EXPLORE',
            text2: 'last pieces',
            textSize: 50.0,
            textBoxSize: 80.0,
          ),
        ],
      ),
    );
  }
}

class SideDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                    alignment: Alignment.centerLeft,
                    child: IconButton(
                        icon: Icon(
                          Icons.close,
                          size: 40.0,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        })),
                SizedBox(
                  height: 50.0,
                ),
                Text(
                  'CAMPAIGN',
                  style: TextStyle(fontSize: 35.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 50.0,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, ProductScreen.id);
                  },
                  child: Text(
                    'NEW IN',
                    style:
                        TextStyle(fontSize: 35.0, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 50.0,
                ),
                Text(
                  'COLLECTION',
                  style: TextStyle(fontSize: 35.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 50.0,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, SecondProductScreen.id);
                  },
                  child: Text(
                    'SHOES&BAGS',
                    style:
                        TextStyle(fontSize: 35.0, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 50.0,
                ),
                Text(
                  'ECOM20/CITIES',
                  style: TextStyle(fontSize: 35.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 50.0,
                ),
                Text(
                  'JOIN LIFE',
                  style: TextStyle(fontSize: 35.0, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
