import 'package:flutter/material.dart';
import 'package:walletapp/Screens/options.dart';
import 'package:walletapp/components/constants.dart';
import 'package:walletapp/components/rounded_button.dart';
import 'package:walletapp/components/tracking_text_input.dart';
class Login extends StatefulWidget {
  static const String id = 'login_screen';
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  String email;
  String password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueColor,
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(

              padding: const EdgeInsets.only(top:140.0, left: 40),
              child: Text("Log In",
                style: TextStyle(
                  color: Colors.white,
                    fontSize: 30
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 40),
              child: Row(
                children: <Widget>[
                  Text("Logoname", style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                    fontSize: 30
                  ),),
                  SizedBox(
                    width: 10,
                  ),
                  Text("wallet", style: TextStyle(
                    color: Colors.white,
                    fontSize: 30
                  ),)
                ],
              ),
            ),

            SizedBox(
              height: 80,
            ),

            Padding(
              padding: const EdgeInsets.only(left:30.0, right: 30),
              child: TrackingTextInput(
                label: "username",
                hint: "What's your email address?",
                colour: Colors.white,
                onTextChanged: (String value) {
                  email = value;
                },
              ),
            ),

            SizedBox(
              height: 10,
            ),

            Padding(
              padding: const EdgeInsets.only(left:30.0, right: 30),
              child: TrackingTextInput(
                label: "password",
                hint: "Try try and try...",
                isObscured: true,
                onTextChanged: (String value) {
                  password = value;
                },
              ),
            ),


            Center(
              child: RoundedButton(
                title: 'LOGIN',
                colour: lightBlueColor,
                onPressed: () {
                  Navigator.pushNamed(context, Options.id);
                },
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left:240.0),
              child: Text("Forgot Password?",style: TextStyle(
                color: Colors.white,
                fontSize: 14
              ),),
            ),


            Padding(
              padding: const EdgeInsets.only(top:50.0),
              child: Container(
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
            ),

          ],



        ),
      ),



    );
  }
}
