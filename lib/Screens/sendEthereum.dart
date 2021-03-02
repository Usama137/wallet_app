import 'package:flutter/material.dart';
import 'package:walletapp/Screens/walletDescription.dart';
import 'package:walletapp/components/constants.dart';
import 'package:walletapp/components/rounded_button.dart';
import 'package:walletapp/components/send_input.dart';

class SendEthereum extends StatefulWidget {
  static const String id = 'sendEthereum_screen';
  @override
  _SendEthereumState createState() => _SendEthereumState();
}

class _SendEthereumState extends State<SendEthereum> {
  String rcpt;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: blueColor,
        body: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Column(
            children: <Widget>[
              Container(
                  width: double.infinity,
                  height: 300,
                  color: darkBlueColor,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0, left: 20.0),
                        child: Row(
                          children: <Widget>[
                            InkWell(
                              child:
                                  //Icon(Icons.arrow_back, color: Colors.white,size: 27,),
                                  Image.asset(
                                "images/backArrow.png",
                                color: Colors.white,
                                height: 23,
                                width: 23,
                              ),
                              onTap: () {
                                Navigator.pushNamed(context, WalletDesc.id);
                              },
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            "images/send.png",
                            height: 70,
                            width: 70,
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Send",
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            'images/ethereum.png',
                            height: 60,
                            width: 60,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Send Ethereum",
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                        ],
                      )
                    ],
                  )),
              SizedBox(
                height: 30,
              ),
              Container(
                  height: 80,
                  width: 370,
                  //color: darkBlueColor,
                  decoration: BoxDecoration(
                    color: darkBlueColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: 270,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SendInput(
                            label: "Recipient Address",
                            hint: "What's Recipient address?",
                            colour: Colors.white,
                            onTextChanged: (String value) {
                              rcpt = value;
                            },
                          ),
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: Text(
                          "PAST",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      )
                    ],
                  )),
              SizedBox(
                height: 30,
              ),
              Container(
                  height: 80,
                  width: 370,
                  //color: darkBlueColor,
                  decoration: BoxDecoration(
                    color: darkBlueColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: 230,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SendInput(
                            label: "ETH amount",
                            hint: "ETH amount?",
                            colour: Colors.white,
                            onTextChanged: (String value) {
                              rcpt = value;
                            },
                          ),
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: Text(
                          "MAX ETH",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      )
                    ],
                  )),
              SizedBox(
                height: 20,
              ),
              RoundedButton(
                title: 'SEND',
                colour: lightBlueColor,
                onPressed: () {
                  // Navigator.pushNamed(context, Options.id);
                },
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
                            "images/blackLogoC.png",
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
      ),
    );
  }
}
