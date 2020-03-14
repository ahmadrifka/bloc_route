import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:router_examp/presentation/homescreen/home_screen.dart';
import 'package:router_examp/presentation/main_screen.dart';
import 'package:router_examp/presentation/profilescreen/profile_screen.dart';
import 'package:router_examp/presentation/search/search_screen.dart';
import 'package:router_examp/presentation/splashscreen/splash_screen.dart';

import 'routes.dart';

class RouteGenerator{
  static Route<dynamic> generateRoute(RouteSettings settings){
    // final args = settings.arguments;

    switch (settings.name) {
      case Routes.initialPage:
        return MaterialPageRoute(
          builder: (_) => SplashScreen());
      case Routes.mainPage:
        return MaterialPageRoute(
          builder: (_) => MainScreen());
      case Routes.homePage:
        return MaterialPageRoute(
          builder: (_) => HomeScreen());
      case Routes.profilePage:
        return MaterialPageRoute(
          builder: (_) => ProfileScreen());
      case Routes.searchPage:
        return MaterialPageRoute(
          builder: (_) => SearchScreen());
      default:
        return _errorRoute();
    }
  }

  // _errorRoute is just a screen with error.
  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return _errorWidget();
    });
  }

  static Widget _errorWidget(){
    return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('ERROR'),
        ),
      );
  }

  static Widget getRouteWidget(String routePath){
    switch (routePath) {
      case Routes.initialPage:
        return SplashScreen();
      case Routes.mainPage:
        return MainScreen();
      case Routes.homePage:
        return HomeScreen();
      case Routes.profilePage:
        return ProfileScreen();

      default:
        return _errorWidget();
    }
  }
  

  
}