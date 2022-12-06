import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobby/theme/constants.dart';

import 'tabs/home_tab.dart';
import 'tabs/search_tab.dart';
import 'tabs/notification_tab.dart';
import 'tabs/profile_tab.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomeTab(),
    SearchTab(),
    NotificationTab(),
    ProfileTab(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _widgetOptions.elementAt(_selectedIndex)),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: bgColor,
        iconSize: 24,
        elevation: 0,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/home.svg",
              color:
                  _selectedIndex == 0 ? const Color(0xffABEDD8) : Colors.black,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/search.svg",
              color:
                  _selectedIndex == 1 ? const Color(0xffABEDD8) : Colors.black,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/bell.svg",
              color:
                  _selectedIndex == 2 ? const Color(0xffABEDD8) : Colors.black,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/user.svg",
              color:
                  _selectedIndex == 3 ? const Color(0xffABEDD8) : Colors.black,
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
