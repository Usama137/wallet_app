import 'package:flutter/material.dart';
import 'package:walletapp/components/constants.dart';
class Dex extends StatefulWidget {
  @override
  _DexState createState() => _DexState();
}

class _DexState extends State<Dex> {
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
