import 'package:flutter/material.dart';
import 'package:walletapp/Screens/menu.dart';
import 'package:walletapp/Screens/receiveEthereum.dart';
import 'package:walletapp/Screens/sendEthereum.dart';
import 'package:walletapp/Screens/wallet.dart';
import 'package:walletapp/components/constants.dart';
import 'package:walletapp/Screens/swapEthereum.dart';

class WalletDesc extends StatefulWidget {
  static const String id = 'walletDesc_screen';
  @override
  _WalletDescState createState() => _WalletDescState();
}

class _WalletDescState extends State<WalletDesc> {


  double cBalance=0.00;
  String sender="0x90732231831815C84290af8dA82eA799755070";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: blueColor,
        body: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 300,
              color: darkBlueColor,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top:20.0, left :20.0),
                    child: Row(
                      children: <Widget>[
                        InkWell(child:
                        //Icon(Icons.arrow_back, color: Colors.white,size: 27,),
                        Image.asset(
                          "images/backArrow.png",color: Colors.white,
                          height: 23,
                          width: 23,
                        ),
                          onTap: (){
                            Navigator.pushNamed(context, MenuScreen.id);
                          },
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),


                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: Image.asset('images/ethereum.png', height: 60,width: 60,),
                      ),
                      Text("Ethereum",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 23
                        ),
                          ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right:20.0),
                        child: Column(
                          children: <Widget>[
                            Text(
                              "0 ETH",
                              style: TextStyle(fontSize: 20, color: Colors.white),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text("\$$cBalance USD", style: TextStyle(
                              color: Colors.white
                            ),)
                          ],
                        ),
                      )
                    ],
                  ),









                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40.0, right: 40),
                    child: Row(
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            InkWell(
                              child: Image.asset(
                                "images/send.png",
                                height: 60,
                                width: 60,
                              ),
                              onTap: (){
                                Navigator.pushNamed(context, SendEthereum.id);
                              },
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Send",
                              style:
                              TextStyle(fontSize: 13, color: Colors.white),
                            )
                          ],
                        ),
                        Spacer(),
                        Column(
                          children: <Widget>[
                            InkWell(
                              child: Image.asset(
                                "images/receive.png",
                                height: 60,
                                width: 60,
                              ),
                              onTap: (){
                                Navigator.pushNamed(context, ReceiveEthereum.id);
                              },
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Receive",
                              style:
                              TextStyle(fontSize: 13, color: Colors.white),
                            )
                          ],
                        ),
                        Spacer(),
                        Column(
                          children: <Widget>[
                            InkWell(
                              child: Image.asset(
                                "images/swap.png",
                                height: 60,
                                width: 60,
                              ),

                              onTap: (){
                                Navigator.pushNamed(context, SwapEthereum.id);
                              },
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Swap",
                              style:
                              TextStyle(fontSize: 13, color: Colors.white),
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),

            Expanded(
              child: ListView(
                scrollDirection: Axis.vertical,

                children: <Widget>[

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Today", style: TextStyle(
                      color: Colors.white
                    ),
                    ),
                  ),
                  Container(
                    height: 80,
                    color: darkBlueColor,
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Received", style: TextStyle(
                                color: Colors.white,
                                fontSize: 16
                              ),),
                            ),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "+0.157 ETH", style: TextStyle(
                                color: Colors.green,
                                fontSize: 16
                              ),
                              ),
                            )
                          ],
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "From: $sender", style: TextStyle(color: Colors.white,
                            fontSize: 14),
                            ),
                          ),
                        )
                      ],
                    ),

                  ),

                  SizedBox(
                    height: 6,
                  ),



                  Container(
                    height: 80,
                    color: darkBlueColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Row(


                          children: <Widget>[

                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Sent", style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16
                              ),),
                            ),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "+0.765 ETH", style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 16
                              ),
                              ),
                            )
                          ],
                        ),
                        Expanded(
                          child: Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "To: $sender", style: TextStyle(color: Colors.white,
                                    fontSize: 14),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),

                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Yesterday", style: TextStyle(
                        color: Colors.white
                    ),
                    ),
                  ),
                  Container(
                    height: 80,
                    color: darkBlueColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Row(


                          children: <Widget>[

                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Sent", style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16
                              ),),
                            ),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "+0.765 ETH", style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 16
                              ),
                              ),
                            )
                          ],
                        ),
                        Expanded(
                          child: Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "To: $sender", style: TextStyle(color: Colors.white,
                                    fontSize: 14),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),

                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Container(
                    height: 80,
                    color: darkBlueColor,
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Received", style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16
                              ),),
                            ),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "+0.157 ETH", style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 16
                              ),
                              ),
                            )
                          ],
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "From: $sender", style: TextStyle(color: Colors.white,
                                fontSize: 14),
                            ),
                          ),
                        )
                      ],
                    ),

                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Container(
                    height: 80,
                    color: darkBlueColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Row(


                          children: <Widget>[

                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Sent", style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16
                              ),),
                            ),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "+0.765 ETH", style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 16
                              ),
                              ),
                            )
                          ],
                        ),
                        Expanded(
                          child: Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "To: $sender", style: TextStyle(color: Colors.white,
                                    fontSize: 14),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),

                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Container(
                    height: 80,
                    color: darkBlueColor,
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Received", style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16
                              ),),
                            ),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "+0.157 ETH", style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 16
                              ),
                              ),
                            )
                          ],
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "From: $sender", style: TextStyle(color: Colors.white,
                                fontSize: 14),
                            ),
                          ),
                        )
                      ],
                    ),

                  ),





                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
