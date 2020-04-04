import 'package:flutter/material.dart'; 
import 'package:delivery_app/widgets/CustomAppBar.dart';
import 'package:delivery_app/widgets/SubCategoryTile.dart';

class SubCategoryTemplate extends StatefulWidget {
  final Map category;
  SubCategoryTemplate({this.category});

  @override
  _SubCategoryTemplateState createState() => _SubCategoryTemplateState();
}

class _SubCategoryTemplateState extends State<SubCategoryTemplate> {
  List<String> subcategories = ["Cabbage and lettuce(14)", "Cucumbers and tomatoes(10)", "Onions and garlic(8)", "Peppers(7)", "Potatoes and carrots(4)"];
  int _selectedSubCategoryIndex = 0;

  Widget _buildSubCategoryTabItem(int index, String title){
    return GestureDetector(
      onTap: (){
        setState(() {
          _selectedSubCategoryIndex = index;
        });
      },
      child: Container(
        margin: EdgeInsetsDirectional.only(end: 15.0),
        child: Stack(
          children: <Widget>[
            _selectedSubCategoryIndex == index ?
            Positioned(
              child: Container(
                width: 120.0,
                decoration: BoxDecoration(
                  color: Color(0xffE2CBFF),
                  borderRadius: BorderRadius.circular(20.0)
                ),
                child: SizedBox(
                  height:20.0
                ),
                padding: EdgeInsets.symmetric(horizontal:15.0, vertical: 8.0),
              ),
            ): SizedBox(width:0.0),
            Container(
              padding: EdgeInsets.symmetric(vertical: 6.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  _selectedSubCategoryIndex == index ? SizedBox(width: 20.0,): SizedBox(width:0.0),
                  _selectedSubCategoryIndex == index ? Icon(
                    Icons.check,
                    color: Color(0xff6C0EE4),
                  ): SizedBox(width:0.0),
                  SizedBox(width:10.0),
                  Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: _selectedSubCategoryIndex == index ? Color(0xff6C0EE4): Color(0xff9586A8),
                      fontSize: 16.0
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
  
  @override
  Widget build(BuildContext context) {
    
    return ListView(
      children: <Widget>[Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            right: 0,
            child: Image(
              image: AssetImage(
                "assets/images/vegetableGraphic.png"
              ),
              width: 170.0,
            )
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
            decoration: BoxDecoration(
              color: Color(0x00F6F5F5)
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CustomAppBar(),
                Text(
                
                this.widget.category["category"][0].toUpperCase() + this.widget.category["category"].substring(1),
                
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
                    fillColor: Colors.white,
                    
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
             SizedBox(height:30.0),
              Container(
                height: 50.0, 
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Row(                 
                    children: subcategories.map((subcategory) => _buildSubCategoryTabItem(subcategories.indexOf(subcategory), subcategory)).toList(),
                  )],
                ),
              ),
              SizedBox(height: 50.0),
              Column(
                children: this.widget.category["children"].map<Widget>(
                  (subcategory) => SubCategoryTile(
                    subCategoryInfo: subcategory,
                    heroTag: this.widget.category["children"].indexOf(subcategory)
                  )).toList(),
              )

              ]
            ),
          )
        ],
      ),
    ]
    );
  }
}