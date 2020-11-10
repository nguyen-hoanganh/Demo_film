import 'package:film_demo/screen/account/account_view.dart';
import 'package:film_demo/screen/coming/coming_view.dart';
import 'package:film_demo/screen/discover/discover_view.dart';
import 'package:film_demo/screen/home/home_view.dart';
import 'package:flutter/material.dart';


class MainHome extends StatefulWidget {
  @override
  _MainHomeState createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  int _selectedTabIndex = 0;

  List _pages = [
    HomeView(),
    DiscoverView(),
    ComingView(),
    AccountView()
  ];

  _changeIndex(int index) {
    setState(() {
      _selectedTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _pages[_selectedTabIndex]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTabIndex,
        onTap: _changeIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Home")),
          BottomNavigationBarItem(icon: Icon(Icons.movie_filter_outlined), title: Text("Discover")),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_today), title: Text("Coming")),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), title: Text("My Account")),
        ],
      ),
    );
  }
}
