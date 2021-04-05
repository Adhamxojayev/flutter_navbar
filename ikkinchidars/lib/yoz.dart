import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:ikkinchidars/home1.dart';
import 'package:ikkinchidars/home2.dart';
import 'package:ikkinchidars/home3.dart';
import 'package:ikkinchidars/home4.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  late PageController _pageController;
  int _currentTap = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = new PageController();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: [
          Home_one(),
          Home_tu(),
          Home_three(),
          Home_fo(),
        ],
        onPageChanged: (int index){
          setState(() {
            _currentTap = index;
          });
        },
      ),
      bottomNavigationBar: FancyBottomNavigation(
        initialSelection: _currentTap,
        tabs: [
        
          TabData(iconData: Icons.home, title: "Home"),
          TabData(iconData: Icons.search, title: "Search"),
          TabData(iconData: Icons.shopping_basket_sharp, title: "Basket"),
          TabData(iconData: Icons.developer_mode_sharp, title: "Phone"),

        ],
        onTabChangedListener: (positon){
          setState(() {
            _currentTap = positon;
            _pageController.animateToPage(positon, duration: Duration(milliseconds: 200), curve:Curves.easeIn);
          });

        },
      ),
    );
  }
}













