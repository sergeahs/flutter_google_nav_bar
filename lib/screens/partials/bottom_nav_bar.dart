import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_google_nav_bar/screens/like.dart';
import 'package:flutter_google_nav_bar/screens/home.dart';
import 'package:flutter_google_nav_bar/screens/profile.dart';
import 'package:flutter_google_nav_bar/screens/search.dart';
import 'package:flutter_google_nav_bar/screens/utils/constants.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBarWidget extends StatefulWidget {
  const BottomNavBarWidget({super.key});

  @override
  State createState() => _BottomNavBarWidgetState();
}

class _BottomNavBarWidgetState extends State<BottomNavBarWidget> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = [
    Home(),
    Like(),
    Search(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: GNav(
            backgroundColor: Constants.appColor,
            rippleColor: Colors.grey[300]!,
            hoverColor: Colors.grey[100]!,
            gap: 8,
            activeColor: Constants.appColor,
            iconSize: 24,
            haptic: false,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            duration: const Duration(milliseconds: 400),
            tabBackgroundColor: Colors.grey[100]!,
            tabMargin: const  EdgeInsets.all(5),
            color: Colors.white,
            tabs: iconList,
            selectedIndex: _selectedIndex,
            onTabChange: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
          ),
        ),
      ),
    );
  }

  static const iconList = [
    GButton(
      icon: Icons.home,
      text: 'Home',
    ),
    GButton(
      icon: CupertinoIcons.heart,
      text: 'Likes',
    ),
    GButton(
      icon: Icons.search,
      text: 'Search',
    ),
    GButton(
      icon: Icons.person,
      text: 'Profile',
    ),
  ];
}
