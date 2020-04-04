import 'package:flutter/material.dart';
import 'package:delivery_app/widgets/AtmCard.dart';
import 'package:delivery_app/widgets/CustomAppBar.dart';

class Payment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical:30.0, horizontal:15.0),
          children: <Widget>[
            CustomAppBar(),
            SizedBox(height:10.0),
            Text(
              "Credit / Debit card",
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontWeight: FontWeight.bold,
                fontSize: 32.0
              )           
            ),
            SizedBox(height:30.0),
            AtmCard(),
            SizedBox(height:40.0),
            FlatButton(
              onPressed: (){},
              color: Color(0xff0ACF83),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical:20.0),
                child: Text(
                  "USE THIS CARD",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0
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