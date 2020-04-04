import 'package:delivery_app/layout/SubCategoryTemplate.dart';
import 'package:delivery_app/pages/Checkout.dart';
import 'package:delivery_app/pages/Personal.dart';
import 'package:flutter/material.dart';
import 'package:delivery_app/data.dart';
import 'package:delivery_app/layout/PageViewAndBottomBar.dart';


class SubCategory extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    String categoryName = ModalRoute.of(context).settings.arguments;
    Map categoryData = categories[categories.indexWhere((category) => category["category"] == categoryName)];
    
    return PageViewAndBottomBar(
      firstPage: SubCategoryTemplate(category: categoryData,),
      secondPage: Checkout(),
      thirdPage: Personal(),
    );
  }
}