import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:router_examp/common/route/routing.dart';

import 'common/route/routes.dart';

void main(){
    runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Route Example',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ) ,
      initialRoute: Routes.initialPage,
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}