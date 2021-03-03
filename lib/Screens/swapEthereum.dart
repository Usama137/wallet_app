import 'package:flutter/material.dart';
import 'package:walletapp/components/constants.dart';
import 'package:walletapp/Screens/walletDescription.dart';
import 'package:walletapp/components/send_input.dart';
import 'package:walletapp/components/smallRoundedButton.dart';
import 'package:walletapp/components/swapRoundedButton.dart';

class SwapEthereum extends StatefulWidget {
  static const String id = 'swapEthereum_screen';
  @override
  _SwapEthereumState createState() => _SwapEthereumState();
}

class _SwapEthereumState extends State<SwapEthereum> {
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
                            "images/swap.png",
                            height: 70,
                            width: 70,
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Swap",
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
                            "Swap Ethereum",
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                        ],
                      )
                    ],
                  )),
              SizedBox(
                height: 5,
              ),
              Text(
                "1 ETH = 1,500 ARB",
                style: TextStyle(
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 220,
                width: 340,
                decoration: BoxDecoration(
                  color: darkBlueColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "From",
                            style:
                                TextStyle(color: lightBlueColor, fontSize: 18),
                            textAlign: TextAlign.start,
                          ),
                        ),
                      ],
                    ),
                    Container(
                        height: 50,
                        width: 320,
                        //color: darkBlueColor,
                        decoration: BoxDecoration(
                            color: darkBlueColor,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.white)),
                        child: Row(
                          children: <Widget>[
                            Container(
                              width: 170,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SendInput(
                                  label: "0.0",
                                  hint: "?",
                                  colour: Colors.white,
                                  onTextChanged: (String value) {
                                    // rcpt = value;
                                  },
                                ),
                              ),
                            ),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Image.asset(
                                'images/ethereum.png',
                                height: 30,
                                width: 30,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "ETH",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            )
                          ],
                        )),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Balance: 0 ETH",
                            style:
                                TextStyle(color: lightBlueColor, fontSize: 12),
                            textAlign: TextAlign.start,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "You Will Get",
                            style:
                                TextStyle(color: lightBlueColor, fontSize: 12),
                            textAlign: TextAlign.start,
                          ),
                        ),
                      ],
                    ),
                    Container(
                        height: 50,
                        width: 320,
                        //color: darkBlueColor,
                        decoration: BoxDecoration(
                            color: darkBlueColor,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.white)),
                        child: Row(
                          children: <Widget>[
                            Container(
                              width: 170,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SendInput(
                                  label: "0.0",
                                  hint: "?",
                                  colour: Colors.white,
                                  onTextChanged: (String value) {
                                    // rcpt = value;
                                  },
                                ),
                              ),
                            ),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Image.asset(
                                'images/logoWhite.png',
                                color: Colors.white,
                                height: 30,
                                width: 30,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "ARB",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            )
                          ],
                        )),
                  ],
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SwapRoundedButton(
                    title: '25%',
                    colour: lightBlueColor,
                    onPressed: (){
                      //
                    },
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  SwapRoundedButton(
                    title: '50%',
                    colour: lightBlueColor,
                    onPressed: (){
                      //
                    },
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  SwapRoundedButton(
                    title: '75%',
                    colour: lightBlueColor,
                    onPressed: (){
                      //
                    },
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  SwapRoundedButton(
                    title: '100%',
                    colour: lightBlueColor,
                    onPressed: (){
                      //
                    },
                  )
                ],
              ),


              Container(
                width: double.infinity,
                child: Stack(
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
                    SizedBox(
                      height: 40,
                    ),



                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                          height: 50,
                        ),
                        Center(
                          child: SmallRoundedButton(
                            title: "SWAP",
                            colour: lightBlueColor,
                            onPressed: (){
                              //function
                            },

                          ),
                        ),
                      ],
                    ),


                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
