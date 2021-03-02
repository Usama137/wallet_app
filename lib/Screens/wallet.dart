import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:walletapp/Screens/walletDescription.dart';
import 'package:walletapp/components/constants.dart';

class Wallet extends StatefulWidget {
  static const String id = 'wallet_screen';
  @override
  _WalletState createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  double balance = 0.00;

  @override
  Widget build(BuildContext context) {
    return Container(

      decoration: BoxDecoration(
        color: blueColor,
        image:DecorationImage(
          image: AssetImage('images/blackLogoC.png', ),
          alignment: Alignment.bottomLeft,

        )


      ),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 300,
                color: darkBlueColor,
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "\$ $balance",
                      style: TextStyle(fontSize: 40, color: Colors.white),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Logoname Wallet",
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                    SizedBox(
                      height: 40,
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
                                  height: 70,
                                  width: 70,
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                "Send",
                                style:
                                    TextStyle(fontSize: 16, color: Colors.white),
                              )
                            ],
                          ),
                          Spacer(),
                          Column(
                            children: <Widget>[
                              InkWell(
                                child: Image.asset(
                                  "images/receive.png",
                                  height: 70,
                                  width: 70,
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                "Receive",
                                style:
                                    TextStyle(fontSize: 16, color: Colors.white),
                              )
                            ],
                          ),
                          Spacer(),
                          Column(
                            children: <Widget>[
                              InkWell(
                                child: Image.asset(
                                  "images/swap.png",
                                  height: 70,
                                  width: 70,
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                "Swap",
                                style:
                                    TextStyle(fontSize: 16, color: Colors.white),
                              )
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),

              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/blackLogoC.png'),
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),

              Expanded(
                child: ListView(
                  scrollDirection: Axis.vertical,

                  children: <Widget>[




                    SizedBox(
                      height: 8,
                    ),
                    InkWell(
                      child: Container(
                        height: 80,
                        color: darkBlueColor,
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Image.asset('images/ethereum.png', height: 60,width: 60,),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(left:8.0, top: 8.0),
                                  child: Text(
                                    "Ethereum",style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17
                                  ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left:8.0, bottom: 8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Text("\$5990.95", style: TextStyle(
                                        color: Colors.white,

                                      ),),

                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "-1.55%",style: TextStyle(
                                        color: Colors.red,

                                      ),
                                      )

                                    ],
                                  ),
                                )
                              ],
                            ),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.only(right:18.0),
                              child: Text(
                                "0 ETH", style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20
                              ),
                              ),
                            )

                          ],
                        ),
                      ),
                      onTap: (){
                        Navigator.pushNamed(context, WalletDesc.id);
                      },
                    ),

                    SizedBox(
                      height: 8,
                    ),
                    InkWell(
                      child: Container(
                        height: 80,
                        color: darkBlueColor,
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Image.asset('images/bitcoin.png', height: 60,width: 60,),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(left:8.0, top: 8.0),
                                  child: Text(
                                    "Bitcoin",style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17
                                  ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left:8.0, bottom: 8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Text("\$95990.95", style: TextStyle(
                                        color: Colors.white,

                                      ),),

                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "+10.55%",style: TextStyle(
                                        color: Colors.green,

                                      ),
                                      )

                                    ],
                                  ),
                                )
                              ],
                            ),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.only(right:18.0),
                              child: Text(
                                "0 BTC", style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20
                              ),
                              ),
                            )

                          ],
                        ),
                      ),
                      onTap: (){
                        //hello navigation
                      },
                    ),

                    SizedBox(
                      height: 8,
                    ),
                    InkWell(
                      child: Container(
                        height: 80,
                        color: darkBlueColor,
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Image.asset('images/tether.png', height: 60,width: 60,),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(left:8.0, top: 8.0),
                                  child: Text(
                                    "Tether USD",style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17
                                  ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left:8.0, bottom: 8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Text("\$1.00", style: TextStyle(
                                        color: Colors.white,

                                      ),),

                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "+0.05%",style: TextStyle(
                                        color: Colors.green,

                                      ),
                                      )

                                    ],
                                  ),
                                )
                              ],
                            ),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.only(right:18.0),
                              child: Text(
                                "0 USDT", style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20
                              ),
                              ),
                            )

                          ],
                        ),
                      ),
                      onTap: (){
                        //hello navigation
                      },
                    ),

                    SizedBox(
                      height: 8,
                    ),
                    InkWell(
                      child: Container(
                        height: 80,
                        color: darkBlueColor,
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Image.asset('images/arab.png', height: 60,width: 60,),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(left:8.0, top: 8.0),
                                  child: Text(
                                    "ABCDarab",style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17
                                  ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left:8.0, bottom: 8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Text("\$1.75", style: TextStyle(
                                        color: Colors.white,

                                      ),),

                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "+0.05%",style: TextStyle(
                                        color: Colors.green,

                                      ),
                                      )

                                    ],
                                  ),
                                )
                              ],
                            ),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.only(right:18.0),
                              child: Text(
                                "0 ARB", style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20
                              ),
                              ),
                            )

                          ],
                        ),
                      ),
                      onTap: (){
                        //hello navigation
                      },
                    ),

                    SizedBox(
                      height: 8,
                    ),
                    InkWell(
                      child: Container(
                        height: 80,
                        color: darkBlueColor,
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Image.asset('images/bnb.png', height: 60,width: 60,),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(left:8.0, top: 8.0),
                                  child: Text(
                                    "BNB",style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17
                                  ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left:8.0, bottom: 8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Text("\$750.75", style: TextStyle(
                                        color: Colors.white,

                                      ),),

                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "+200.05%",style: TextStyle(
                                        color: Colors.green,

                                      ),
                                      )

                                    ],
                                  ),
                                )
                              ],
                            ),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.only(right:18.0),
                              child: Text(
                                "0 BNB", style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20
                              ),
                              ),
                            )

                          ],
                        ),
                      ),
                      onTap: (){
                        //hello navigation
                      },
                    ),

                    SizedBox(
                      height: 8,
                    ),
                    InkWell(
                      child: Container(
                        height: 80,
                        color: darkBlueColor,
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Image.asset('images/xrp.png', height: 60,width: 60,),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(left:8.0, top: 8.0),
                                  child: Text(
                                    "XRP",style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17
                                  ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left:8.0, bottom: 8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Text("\$0.750", style: TextStyle(
                                        color: Colors.white,

                                      ),),

                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "+10.05%",style: TextStyle(
                                        color: Colors.red,

                                      ),
                                      )

                                    ],
                                  ),
                                )
                              ],
                            ),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.only(right:18.0),
                              child: Text(
                                "0 XRP", style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20
                              ),
                              ),
                            )

                          ],
                        ),
                      ),
                      onTap: (){
                        //hello navigation
                      },
                    ),

                    SizedBox(
                      height: 8,
                    ),
                    InkWell(
                      child: Container(
                        height: 80,
                        color: darkBlueColor,
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Image.asset('images/doge.png', height: 60,width: 60,),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(left:8.0, top: 8.0),
                                  child: Text(
                                    "DogeCoin",style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17
                                  ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left:8.0, bottom: 8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Text("\$1.750", style: TextStyle(
                                        color: Colors.white,

                                      ),),

                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "+17.75%",style: TextStyle(
                                        color: Colors.green,

                                      ),
                                      )

                                    ],
                                  ),
                                )
                              ],
                            ),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.only(right:18.0),
                              child: Text(
                                "0 DOGE", style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20
                              ),
                              ),
                            )

                          ],
                        ),
                      ),
                      onTap: (){
                        //hello navigation
                      },
                    ),
                  ],
                ),
              ),


//            Stack(
//              children: <Widget>[
//                Container(
//                  alignment: Alignment.bottomLeft,
//                  height: 270,
//                  width: 270,
//                  child: Stack(
//
//                    children: <Widget>[
//                      Positioned.fill(
//                        child: Image.asset(
//                          "images/blackLogoC.png",
//                          colorBlendMode: BlendMode.darken,
//                          fit: BoxFit.fitWidth,
//                          alignment: Alignment.bottomLeft,
//
//                        ),
//                      ),
//                    ],
//
//                  ),
//                ),
//
//
//
//
//
//
//              ],
//            ),

            ],
          ),
        ),
      ),
    );
  }
}
