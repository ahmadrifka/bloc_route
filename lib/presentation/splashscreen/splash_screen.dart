import 'package:flutter/material.dart';
import 'package:router_examp/common/route/routes.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,    
            children: <Widget>[
                Text('WELCOME TO SPLASHSCREEN'),
                FlatButton(
                  onPressed: (){
                    Navigator.pushNamed(context, Routes.mainPage);
                  }, 
                  child: Text('Go to HomePage')
                )
            ],),
      ),
    );
  }
}