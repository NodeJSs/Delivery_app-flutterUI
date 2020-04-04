

import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffA259FF),
      body: SafeArea(
          child: ListView(children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height,
            child: Stack(
              
              children: <Widget>[
                Positioned(
                  top: 40.0,
                  left:20.0,
                  child: Container(
                    padding: EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                      color: Color(0xffCDFFB6),
                      borderRadius: BorderRadius.circular(50.0)
                    ),
                    child: Image(
                      image: AssetImage("assets/images/D.png"),
                      height: 20.0,
                      width:20.0
                    ),
                  )
                ),
                Positioned(
                  top: 0.0,
                  right: -10.0,
                  child: Opacity(
                    opacity: 0.6,
                    child:
                      Image(
                        image: AssetImage("assets/images/Ellipse8.png"),
                        width: 400.0,
                    )
                  ),
                ),
                Positioned(
                  top: 0.0,
                  right: -30.0,
                  child: Image(
                    image: AssetImage(
                      "assets/images/Ellipse10.png",
                    ),
                    width: 200.0,
                    
                  ),
                ),
                Positioned(
                  top: 0.0,
                  right: 0.0,
                  child: Image(
                    image: AssetImage(
                      "assets/images/Ellipse12.png"
                    ),
                    width: 100.0,
                  ),
                ),
                Positioned(
                    bottom: 0.0,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(15.0, 45.0, 15.0, 20.0),
                      height: MediaQuery.of(context).size.height * 0.6,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Color(0xffF6F5F5),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0),topRight: Radius.circular(30.0))
                      ),
                      child: ListView(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                height: 120.0,
                                width: 120.0,
                                padding: EdgeInsets.all(1.0),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(120.0)
                                ),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Image(
                                    image: AssetImage("assets/images/Box.png"),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height:30.0),
                          Text(
                            "Non-Contact\nDeliveries",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30.0,
                              color: Color(0xff2D0C57)
                            ),
                          ),
                          SizedBox(height:20.0),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal:10.0),
                            child: Text(
                              "When placing an order, select the option 'Contactless delivery' and the courier will leave your order at the door.",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xff9586A8),
                                fontSize: 16.0,
                                letterSpacing: 0.8
                              )
                            ),
                          ),
                          SizedBox(height: 35.0),
                          FlatButton(
                            onPressed: (){
                              Navigator.pushNamed(context, "/pageViewContainer");
                            },
                            color: Color(0xff0BCE83),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0)
                            ),
                            padding: EdgeInsets.symmetric(vertical: 20.0),
                            child: Text(
                              "ORDER NOW",
                              style: TextStyle(
                                color: Colors.white
                              ),
                            )
                          ),
                          SizedBox(height:20.0),
                          Text(
                            "DISMISS",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xff9586A8),
                              fontSize: 15.0
                            ),
                          )
                        ],
                      ),
                    ))
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
