import 'package:flutter/material.dart';
import 'package:delivery_app/pages/Categories.dart';
import 'package:delivery_app/pages/Checkout.dart';
import 'package:delivery_app/pages/Personal.dart';

class PageViewAndBottomBar extends StatefulWidget {
  final Widget firstPage;
  final Widget secondPage;
  final Widget thirdPage;
  const PageViewAndBottomBar({
    Key key,
    this.firstPage,
    this.secondPage,
    this.thirdPage
  }): super(key: key);
  @override
  _PageViewAndBottomBarState createState() => _PageViewAndBottomBarState();
}

class _PageViewAndBottomBarState extends State<PageViewAndBottomBar> {
  
  
  int bottomSelectedIndex = 0;

  List<BottomNavigationBarItem> buildBottomNavBarItems(){
    return[
      BottomNavigationBarItem(
        icon: Icon(Icons.favorite),
        title: Text("")
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.shopping_cart),
        title: Text("")
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.person_outline),
        title: Text("")
      )
    ];
  }

  PageController pageController = PageController(initialPage: 0, keepPage: true);

  Widget buildPageView(){
    return PageView(
      controller: pageController,
      onPageChanged: (index){
        pageChanged(index);
      },
      children: <Widget>[
        widget.firstPage,
        widget.secondPage,
        widget.thirdPage,

        Categories(),
        Checkout(),
        Personal()
        
      ],
    );
  }
  @override
  void initState() {
    super.initState();
  }

  void pageChanged(int index){
    setState(() {
      bottomSelectedIndex = index;
    });
  }

  void bottomTapped(int index){
    setState(() {
      bottomSelectedIndex = index;
      pageController.animateToPage(index, duration: Duration(milliseconds: 500), curve: Curves.ease);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:buildPageView()
        ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Colors.white,
        selectedItemColor: Color(0xcc7203FF),
        items: buildBottomNavBarItems(),
        currentIndex: bottomSelectedIndex,
        onTap: (index){
          bottomTapped(index);
        },
      ),
    );
  }
}
