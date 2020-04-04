import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Map arguments = ModalRoute.of(context).settings.arguments;
    print(arguments);
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 0.0,
              child: Hero(
                tag: arguments["heroTag"],
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 350.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/bostonlettuceBig.png")
                    )
                    
                  ),
                  child: Align(
                    alignment: Alignment(0,0.65),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          height: 10.0,
                          width: 10.0,
                          margin: EdgeInsets.fromLTRB(0.0, 0.0, 5.0, 0.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50.0)
                          ),
                        ),
                        Container(
                          height: 10.0,
                          width: 10.0,
                          margin: EdgeInsets.fromLTRB(0.0, 0.0, 5.0, 0.0),
                          decoration: BoxDecoration(
                            color: Color(0x80ffffff),
                            borderRadius: BorderRadius.circular(50.0)
                          ),
                        ),
                        Container(
                          height: 10.0,
                          width: 10.0,                        
                          decoration: BoxDecoration(
                            color: Color(0x80ffffff),
                            borderRadius: BorderRadius.circular(50.0)
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ),
            Positioned(
              bottom: 0.0,
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: 500.0
                ),
                child: Container(
                  height: MediaQuery.of(context).size.height *0.6,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Color(0xffF6F5F5),
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0),topRight: Radius.circular(30.0))
                  ),
                  child: ListView(
                    padding: EdgeInsets.symmetric(horizontal:20.0, vertical:40.0),
                    children: <Widget>[
                      Text(
                        arguments["subCategoryInfo"]["subcategory"],
                        style: TextStyle(
                          fontSize: 30.0,
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(height:23.0),
                      RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: "${arguments["subCategoryInfo"]["pricePerUnit"].toString()}",
                            style: TextStyle(
                              fontSize: 35.0,
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).primaryColor
                            )
                          ),
                          TextSpan(
                            text: " \$ / ${arguments["subCategoryInfo"]["unit"]}",
                            style: TextStyle(
                              color: Color(0xff9586A8),
                              fontSize: 25.0
                            )
                          )
                        ]
                      )
                    ),
                    SizedBox(height:15.0),
                    Text(
                      "~" + arguments["subCategoryInfo"]["gramPerUnit"].toString() + " gr / piece",
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Color(0xff06BE77)
                      ),
                    ),
                    SizedBox(height:40.0),
                    Text(
                      arguments["subCategoryInfo"]["country"],
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(height:20.0),
                    Text(
                      arguments["subCategoryInfo"]["info"],
                      style: TextStyle(
                        color: Color(0xff9586A8),
                        fontSize: 20.0,
                        letterSpacing: 0.35,
                        height: 1.4
                      ),
                    ),
                    SizedBox(height:60.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        FlatButton.icon(
                          onPressed: (){},
                          color: Colors.white,
                          icon: Icon(
                            Icons.favorite_border,
                            color: Color(0xff9586A8),
                          ),
                          label: SizedBox(width: 0.0,),
                          padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            side: BorderSide(
                              width: 1.0,
                              color: Color(0xffD9D0E3)
                            )
                          ),
                        ),
                        FlatButton.icon(
                          onPressed: (){
                            Navigator.pushNamed(context, "/payment");
                          },
                          color: Color(0xff06BE77),
                          icon: Icon(
                            Icons.shopping_cart,
                            color: Colors.white,
                          ),
                          label: Text(
                            "ADD TO CART",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17.0
                            ),
                          ),
                          padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 60.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            
                          ),
                        )
                      ],
                    )
                    ],
                  ),
                ),
              )
            )
          ],
        ),
      ),
    );
  }
}