import 'package:delivery_app/pages/Payment.dart';
import 'package:delivery_app/pages/SubCategory.dart';
import 'package:flutter/material.dart';
import 'package:delivery_app/pages/SplashScreen.dart';
import 'package:delivery_app/pages/ProductDetails.dart';
import 'package:delivery_app/pages/PageViewContainer.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xff2D0C57)
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => SplashScreen(),
        "/pageViewContainer": (context) => PageViewContainer(),
        "/subCategory": (context) => SubCategory(),
        "/productDetails": (context) => ProductDetails(),
        "/payment": (context) => Payment()
      },
    );
  }
}
