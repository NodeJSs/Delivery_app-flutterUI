import 'package:delivery_app/layout/PageViewAndBottomBar.dart';
import 'package:flutter/material.dart';
import 'package:delivery_app/pages/Categories.dart';
import 'package:delivery_app/pages/Checkout.dart';
import 'package:delivery_app/pages/Personal.dart';

class PageViewContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageViewAndBottomBar(
      firstPage:Categories(),
        secondPage:Checkout(),
        thirdPage:Personal()
    );
  }
}