import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  final String categoryName;
  final int number;
  final String imageSrc;
  Category({this.categoryName, this.number, this.imageSrc});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, "/subCategory", arguments: this.categoryName);
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Color(0xffD9D0E3),
            width: 1.0
          ),
          borderRadius: BorderRadius.circular(15.0)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0)),
                  image: DecorationImage(
                    image: AssetImage(this.imageSrc),
                    fit: BoxFit.cover

                  )
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal:20.0, vertical: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    categoryName[0].toUpperCase() + categoryName.substring(1),
                    
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold
                      
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    "(${this.number})",
                    style: TextStyle(
                      color: Color(0xff9586A8),
                      fontSize: 15.0
                    ),
                  )
                ],
              ),
            )
            
          ],
        ),
      ),
    );
  }
}