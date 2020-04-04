import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical:25.0),
      decoration: BoxDecoration(
        
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          GestureDetector(
            child: Icon(
              Icons.arrow_back_ios,
              size: 20.0,
              color: Color(0xff2D0C57),
            ),
            onTap:(){
              Navigator.pop(context);
            } ,
          )
          
        ],
      ),
    );
  }
}