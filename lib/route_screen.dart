import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:new_app/app_text_filed.dart';
import 'package:new_app/custom_bottombar.dart';
import 'package:new_app/features/home/homeScreen.dart';
import 'package:new_app/features/login/loginScreen.dart';
import 'package:new_app/features/sign%20up%20Screen.dart/sign%20up.dart';

class RouteScreen extends StatefulWidget {
  final Widget Screen;
  const RouteScreen({super.key,required this.Screen});

  @override
  State<RouteScreen> createState() => _RouteScreenState();
}

class _RouteScreenState extends State<RouteScreen> {
  
  @override
  Widget build(BuildContext context) {
   
    return 
    
    Scaffold(
      body: Stack(
        children: [
          Positioned(top: 0,right: 0,left: 0,height: Directions.kHeight*0.6,
            child: Image.asset(
              "assets/logo.jpeg",
              fit: BoxFit.cover,
            
              // width: Directions.kWidth*0.2,
            ),
          ),
          Align(alignment: .bottomCenter,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              height: Directions.kHeight * 0.65,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 42, 128, 156),
                borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
              ),
              child: widget.Screen,
            ),
          ),
         Positioned(right: 0,left: 0,bottom: 0,height: Directions.kHeight*.1
         ,child: CustomBottomNavBar())
        ],
      ),
    );
  }
}

   

class Directions {

  static late double kWidth;
  static late double kHeight;

  Directions({required BuildContext context})
    {kWidth = MediaQuery.of(context).size.width;
      kHeight = MediaQuery.of(context).size.height;
      
}}
