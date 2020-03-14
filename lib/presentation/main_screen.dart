import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';
import 'package:router_examp/common/route/routes.dart';
import 'package:router_examp/common/route/routing.dart';


class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  List bodyScreen = [
    RouteGenerator.getRouteWidget(Routes.homePage),
    RouteGenerator.getRouteWidget(Routes.searchPage),
    RouteGenerator.getRouteWidget(Routes.profilePage)
  ];

  void _itemOnTap(int index){
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bodyScreen[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (e) => _itemOnTap(e),
        items:[
          BottomNavigationBarItem(
            title: Text('Home'),
            icon: Icon(LineAwesomeIcons.home)),
          BottomNavigationBarItem(
            title: Text('Search'),
            icon: Icon(LineAwesomeIcons.search)),
          BottomNavigationBarItem(
            title: Text('Profile'),
            icon: Icon(LineAwesomeIcons.user)),
        ]),
    );
  }
}