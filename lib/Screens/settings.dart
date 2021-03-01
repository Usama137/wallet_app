import 'package:flutter/material.dart';
import 'package:walletapp/components/constants.dart';
class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
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
