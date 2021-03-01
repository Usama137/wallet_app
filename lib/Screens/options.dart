import 'package:flutter/material.dart';
import 'package:walletapp/components/constants.dart';
import 'package:walletapp/components/customRoundedButton.dart';

class Options extends StatefulWidget {
  static const String id = 'options_screen';
  @override
  _OptionsState createState() => _OptionsState();
}

class _OptionsState extends State<Options> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueColor,
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 100,
            ),
            Text(
              "Your simple and secure",
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 35.0),
              child: Row(
                children: <Widget>[
                  Text(
                    "Logoname",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "wallet",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 70,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20),
              child: CustomRoundedButton(
                title: 'Import Existing Key',
                colour: blueColor,
                onPressed: () {
                  //Navigator.pushNamed(context, Options.id);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20),
              child: CustomRoundedButton(
                title: 'Request New Account',
                colour: blueColor,
                onPressed: () {
                  //Navigator.pushNamed(context, Options.id);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20),
              child: CustomRoundedButton(
                title: 'Import Backup',
                colour: blueColor,
                onPressed: () {
                  //Navigator.pushNamed(context, Options.id);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20),
              child: CustomRoundedButton(
                title: 'Check Account',
                colour: blueColor,
                onPressed: () {
                  //Navigator.pushNamed(context, Options.id);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20),
              child: CustomRoundedButton(
                title: 'Generate Keys',
                colour: blueColor,
                onPressed: () {
                  //Navigator.pushNamed(context, Options.id);
                },
              ),
            ),
            Row(
              children: <Widget>[
                Container(
                  alignment: Alignment.bottomLeft,
                  height: 270,
                  width: 270,
                  child: Stack(
                    children: <Widget>[
                      Positioned.fill(
                        child: Image.asset(
                          "images/crop.png",
                          colorBlendMode: BlendMode.darken,
                          fit: BoxFit.fitWidth,
                          alignment: Alignment.bottomLeft,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
