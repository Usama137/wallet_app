import 'package:flutter/material.dart';
import 'package:walletapp/Screens/options.dart';
import 'package:walletapp/Screens/splash.dart';
import 'package:walletapp/Screens/login.dart';


void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  // This widget is the root of your application.


  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

        debugShowCheckedModeBanner: false,

//home:RecommendRecipe(),);
        initialRoute: SplashScreen.id,
        //initialRoute:Login.id,

        routes: {
          SplashScreen.id: (context) => SplashScreen(),
          Login.id:(context)=> Login(),
          Options.id:(context)=> Options(),



        }
    );
  }
}

