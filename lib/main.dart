import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:walletapp/Screens/menu.dart';
import 'package:walletapp/Screens/options.dart';
import 'package:walletapp/Screens/receiveEthereum.dart';
import 'package:walletapp/Screens/sendEthereum.dart';
import 'package:walletapp/Screens/splash.dart';
import 'package:walletapp/Screens/login.dart';
import 'package:walletapp/Screens/wallet.dart';
import 'package:walletapp/Screens/walletDescription.dart';


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
          MenuScreen.id:(context)=>MenuScreen(),
          WalletDesc.id:(context)=>WalletDesc(),
          Wallet.id:(context)=>Wallet(),
          SendEthereum.id:(context)=>SendEthereum(),
          ReceiveEthereum.id:(context)=>ReceiveEthereum(),



        }
    );
  }
}

