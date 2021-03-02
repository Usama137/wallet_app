import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:walletapp/components/constants.dart';
import 'package:walletapp/Screens/walletDescription.dart';
import 'package:walletapp/components/rounded_button.dart';
import 'package:walletapp/components/smallRoundedButton.dart';

class ReceiveEthereum extends StatefulWidget {
  static const String id = 'receiveEthereum_screen';
  @override
  _ReceiveEthereumState createState() => _ReceiveEthereumState();
}

class _ReceiveEthereumState extends State<ReceiveEthereum> {
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
                            "images/receive.png",
                            height: 70,
                            width: 70,
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Receive",
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
                            "Receive Ethereum",
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                        ],
                      )
                    ],
                  )),
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Select Network",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SmallRoundedButton(
                    title: 'ERC20',
                    colour: lightBlueColor,
                    onPressed: () {
                      //
                    },
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  SmallRoundedButton(
                    title: 'BEP2',
                    colour: lightBlueColor,
                    onPressed: () {
                      //
                    },
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 360,
                height: 60,
                decoration: BoxDecoration(
                    color: darkBlueColor,
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Text(
                    "0x90732231831815C84290af8dA82eA799755070",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25.0, right: 25),
                child: Row(
                  children: <Widget>[
                    InkWell(
                      child: Container(
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Image.asset(
                                'images/copy.png',
                                height: 30,
                                width: 30,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Copy",
                              style: TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                      onTap: () {
                        //copy functionality
                      },
                    ),
                    Spacer(),
                    InkWell(
                      child: Container(
                        child: Row(
                          children: <Widget>[
                            Text(
                              "Share",
                              style: TextStyle(color: Colors.white, fontSize: 18),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Image.asset(
                                'images/share.png',
                                height: 30,
                                width: 30,
                              ),
                            ),
                          ],
                        ),
                      ),
                      onTap: () {
                        //on tap functionality
                      },
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 20,
              ),
              Stack(

                children: <Widget>[
                  Container(
                    height: 270,
                    width: 270,
                    decoration: BoxDecoration(
                        color: blueColor,
                        image:DecorationImage(
                          image: AssetImage('images/blackLogoC.png', ),
                          alignment: Alignment.bottomLeft,

                        )


                    ),

                    alignment: Alignment.bottomLeft,
                  ),
                  Container(
                    width: 600,
                    height: 600,
                    decoration: BoxDecoration(
                        //color: blueColor,
                        image:DecorationImage(
                          image: AssetImage('images/qrCodeN.png', ),
                          alignment: Alignment.topCenter,
                          fit: BoxFit.cover

                        )


                    ),

                    alignment: Alignment.topCenter,
                  ),

                ],
              )





            ],
          ),
        ),
      ),
    );
  }
}
