import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:walletapp/components/constants.dart';
import 'package:walletapp/Screens/login.dart';

class SplashScreen extends StatefulWidget {
  static const String id = 'welcome_screen';
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final splashDelay=3;

  @override
  void initState() {
    super.initState();

    _loadWidget();
  }

  _loadWidget() async {
    var _duration = Duration(seconds: splashDelay);
    return Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => Login()));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueColor,
      body: SingleChildScrollView(

        physics: NeverScrollableScrollPhysics(),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top:180.0),
              child: Center(
                child: Container(
                  width: 140,
                  height: 140,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        "images/logoWhite.png",
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Text(
              "Logoname", style: TextStyle(
              color: Colors.white,
              fontSize: 40,
              fontWeight: FontWeight.w400

            ),
            ),
//            Row(
//              mainAxisAlignment: MainAxisAlignment.start,
//              children: <Widget>[
//                Container(
//                  height: 300,
//                  width: 300,
//                  decoration: BoxDecoration(
//                    image: DecorationImage(
//                      image: AssetImage(
//                        "images/logoWhite.png",
//                      ),
//                    ),
//                  ),
//                  alignment: Alignment.bottomLeft,
//                ),
//              ],
//            ),
            Padding(
              padding: const EdgeInsets.only(top:220.0, right: 140),
              child: Container(
                alignment: Alignment.bottomLeft,
                height: 270,
                width: 270,
                child: Stack(

                  children: <Widget>[
                    Positioned.fill(
                      child: Image.asset(
                        "images/blackLogoC.png",
                        colorBlendMode: BlendMode.darken,
                        fit: BoxFit.fitWidth,
                        alignment: Alignment.bottomLeft,

                      ),
                    ),
                  ],

                ),
              ),
            ),

          ],


        ),
      ),
    );
  }
}
