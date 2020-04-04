import 'package:delivery_app/widgets/CustomAppBar.dart';
import 'package:flutter/material.dart';
import 'package:delivery_app/data.dart';
import 'package:delivery_app/widgets/Category.dart';


List<Category> buildCategories(){
  return categories.map((category) => (
    Category(
      number: category["number"],
      imageSrc: category["imageSrc"],
      categoryName: category["category"],
    )
  )).toList();
}
class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xffF6F5F5)
      ),
      child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
          children: <Widget>[
            CustomAppBar(),
            Text(
              "Categories",
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontWeight: FontWeight.bold,
                fontSize: 32.0
              ),
            ),
            SizedBox(height:30.0),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0), 
                color: Colors.white            
              ),
              child: TextField(
                style: TextStyle(
                  fontSize: 18.0
                ),
                decoration: InputDecoration(
                  hintText: "Search",
                  focusedBorder: OutlineInputBorder(
                    borderRadius:  BorderRadius.circular(30.0),
                    borderSide: BorderSide(
                      color: Color(0xffD9D0E3),
                      width: 5.0
                    )
                  ),
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide(
                      color: Color(0xffD9D0E3),
                      width: 5.0
                    )
                  ),
                  
                ),
              ),
            ),
            SizedBox(height:40.0),
            Container(

              child: GridView.count(
              physics: ScrollPhysics(),
              crossAxisCount: 2,
              shrinkWrap: true,
              mainAxisSpacing: 20.0,
              crossAxisSpacing: 20.0,
              
                children: buildCategories()
              ),
            ),
            
            
          ],
      ),
    );
  }
}