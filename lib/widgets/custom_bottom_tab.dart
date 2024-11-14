

import 'package:first_app/app_export.dart';
import 'package:first_app/main.dart';
import 'package:first_app/screens/AllButtons.dart';
import 'package:first_app/screens/AllWidgets.dart';
import 'package:first_app/screens/Home.dart';
import 'package:first_app/screens/SearchDeals.dart';
import 'package:first_app/screens/homedeals.dart';
import 'package:flutter/material.dart';

class CustomBottomTab extends StatefulWidget{

  const CustomBottomTab({super.key});

  @override
  _CustomBottomTabState createState()=>_CustomBottomTabState();
}

class _CustomBottomTabState extends State<CustomBottomTab>{
  // Current selected index for the bottom navigation
  int _currentIndex = 0;
  final List<Widget> _screens=[
    HomeDeals(),
    Home(),
    AllWidgets(),
    AllButtons(),
    SearchDeals(),
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    void _onItemTapped(int index){
      setState(() {
        _currentIndex=index;
      });
    }
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(title: Text('Bottom Tab'),),
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
          selectedItemColor: AppColors.primaryButton,
          unselectedItemColor: AppColors.black,
          showUnselectedLabels: true,
          showSelectedLabels: true,
          currentIndex: _currentIndex,
          onTap:_onItemTapped,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home_repair_service_rounded),label: 'Deals'),
            BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home',),
            BottomNavigationBarItem(icon: Icon(Icons.abc_rounded),label: 'Widgets'),
            BottomNavigationBarItem(icon: Icon(Icons.smart_button),label: 'Buttons'),
            BottomNavigationBarItem(icon: Icon(Icons.search),label: 'Search')
          ]),
    );
  }
}
