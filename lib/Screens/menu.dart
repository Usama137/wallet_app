import 'package:flutter/material.dart';
import 'package:walletapp/Screens/dapps.dart';
import 'package:walletapp/Screens/dex.dart';
import 'package:walletapp/Screens/settings.dart';
import 'package:walletapp/Screens/wallet.dart';
import 'package:walletapp/components/constants.dart';

class MenuScreen extends StatefulWidget {
  static const String id = 'menu_screen';
  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  int _currentIndex = 0;
  Function changePage;
  int i = 0;
  var pages = [
    new Wallet(),
    new Dex(),
    new Dapps(),
    new Settings(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: darkBlueColor,
        currentIndex: _currentIndex,
        onTap: onTabTapped,

        items: [
          BottomNavigationBarItem(
            //icon: new Icon(Icons.home),
            icon: Image.asset(
              'images/wls.png',
              height: 30,
              width: 30,

            ),
            title: new Text(
              'Wallet',
              style: TextStyle(color: Colors.white),
            ),
          ),

          BottomNavigationBarItem(
            //icon: new Icon(Icons.home),
            icon: Image.asset(
              'images/dex.png',
              height: 30,
              width: 30,

            ),
            title: new Text(
              'Dex',
              style: TextStyle(color: Colors.white),
            ),
          ),
          BottomNavigationBarItem(
            //icon: new Icon(Icons.home),
            icon: Image.asset(
              'images/dapps.png',
              height: 30,
              width: 30,

            ),
            title: new Text(
              'DApps',
              style: TextStyle(color: Colors.white),
            ),
          ),
          BottomNavigationBarItem(
            //icon: new Icon(Icons.home),
            icon: Image.asset(
              'images/settings.png',
              height: 30,
              width: 30,

            ),
            title: new Text(
              'Settings',
              style: TextStyle(color: Colors.white),
            ),
          ),

        ],

        // items: i,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
