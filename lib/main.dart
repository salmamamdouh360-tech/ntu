import 'package:flutter/material.dart';

import 'package:new_app/features/home/homeScreen.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //1
      // routes: {
      //   '/': (context) => HomeScreen(),
      //   'login': (context) => LoginScreen(isLogoin: false),
      // },
      // initialRoute: '/',

      home: HomeScreen(),
      
    );
  }
}

// Dart
