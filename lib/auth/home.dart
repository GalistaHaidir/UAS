import 'package:aplikasi_ini/pages/home_page.dart';
import 'package:aplikasi_ini/pages/profile_page.dart';
import 'package:flutter/material.dart';

class HomeAuth extends StatefulWidget {
  const HomeAuth({Key? key}) : super(key: key);

  @override
  _HomeAuthState createState() => _HomeAuthState();
}

class _HomeAuthState extends State<HomeAuth> {
  int _selectedTabIndex = 0;

  void _onNavBarTapped(int index) {
    setState(() {
      _selectedTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final _ListPage = <Widget>[
      HomePage(),
      ProfilePage(),
    ];

    final _bottomNavBarItems = <BottomNavigationBarItem>[
      const BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'Home',
      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.person),
        label: 'Profile',
      ),
    ];
    final _bottomNavBar = BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      items: _bottomNavBarItems,
      currentIndex: _selectedTabIndex,
      unselectedItemColor: Colors.grey,
      selectedItemColor: Colors.blue,
      onTap: _onNavBarTapped,
    );

    return Scaffold(
      body: Center(
        child: _ListPage[_selectedTabIndex],
      ),
      bottomNavigationBar: _bottomNavBar,
    );
  }
}
