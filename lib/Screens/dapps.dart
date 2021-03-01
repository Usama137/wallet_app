import 'package:flutter/material.dart';
import 'package:walletapp/components/constants.dart';
class Dapps extends StatefulWidget {
  @override
  _DappsState createState() => _DappsState();
}

class _DappsState extends State<Dapps> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueColor,
      body: Center(
        child: Text(
          "Coming Soon", style: TextStyle(
            color: Colors.white,
            fontSize: 40
        ),
        ),
      ),
    );
  }
}
