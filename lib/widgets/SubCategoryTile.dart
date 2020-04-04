import 'package:flutter/material.dart';

class SubCategoryTile extends StatelessWidget {
  final Map subCategoryInfo;
  final int heroTag;
   

  SubCategoryTile({this.subCategoryInfo, this.heroTag});
  @override
  Widget build(BuildContext context) {
    String subCategoryTitle = this.subCategoryInfo["subcategory"];
      double pricePerPiece = this.subCategoryInfo["pricePerUnit"];
      String unit = this.subCategoryInfo["unit"];
      String imageTitleSrc = this.subCategoryInfo["coverimage"];
      //print("product_hero_image" + this.heroTag.toString());
    return Container(
      margin: EdgeInsets.fromLTRB(0.0,0.0, 0.0, 35.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, "/productDetails", arguments: {
                  "subCategoryInfo": this.subCategoryInfo,
                  "heroTag": "product_hero_image" + this.heroTag.toString()
                });
              },
              child: Hero(
                tag: "product_hero_image" + this.heroTag.toString(),
                child: Container(
                  height:150.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        imageTitleSrc
                      )
                    )
                  ),
                ),
              ),
            ),
          ),
          SizedBox(width:10.0),
          Container(
            height: 150.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
             crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      subCategoryTitle,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: Theme.of(context).primaryColor
                      ),
                    ),
                    SizedBox(height:15.0), 
                    RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: "${pricePerPiece.toString()}",
                            style: TextStyle(
                              fontSize: 28.0,
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).primaryColor
                            )
                          ),
                          TextSpan(
                            text: " \$ / ${unit == "piece" ?"pie":unit}",
                            style: TextStyle(
                              color: Color(0xff9586A8),
                              fontSize: 16.0
                            )
                          )
                        ]
                      )
                    )
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    FlatButton(
                      color: Colors.white,
                      
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: BorderSide(
                          width: 1.0,
                          color: Color(0xffD9D0E3)
                        )
                      ),
                      onPressed: (){},
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                        child: Icon(
                          Icons.favorite_border,
                          color: Color(0xff9586A8),
                        ),
                      )
                    ),
                    SizedBox(width:10.0),
                    FlatButton(
                      color: Color(0xff0BCE83),
                       shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)
                      ),
                      onPressed: (){},
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                        child: Icon(
                          Icons.shopping_cart,
                          color: Colors.white,
                        ),
                      )
                    )

                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}