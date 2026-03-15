import 'package:flutter/material.dart';

import 'package:new_app/features/home/homeScreen.dart';
import 'package:new_app/features/login/loginScreen.dart';
import 'package:new_app/route_screen.dart';






void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Directions(context: context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //1
      // routes: {
      //   'home': (context) => HomeScreen(),
      //   'login': (context) => LoginScreen(isLogoin: false),
      // },
      // initialRoute: 'login',

      home: HomeScreen(),
      
    );
  }
}

// Dart
