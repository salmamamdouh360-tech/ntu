import 'package:flutter/material.dart';
import 'package:new_app/custom_bottombar.dart';
import 'package:new_app/features/login/loginScreen.dart';
import 'package:new_app/features/sign%20up%20Screen.dart/sign%20up.dart';

import 'package:new_app/route_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            height: Directions.kHeight * 0.28,
            child: Image.asset(
              "assets/logo2.png",
              fit: BoxFit.contain, // width: Directions.kWidth*0.2,
            ),
          ),
          Positioned(
            left: 0,
            right: 150,
            height: Directions.kHeight * 0.45,
            top: 160,

            child: Image.asset('assets/first boy.png', ),
          ),
          Positioned(
            left: 250,
            right: 20,
            height: Directions.kHeight * 0.45,
            top: 170,
            child: Image.asset("assets/second boy.png"),
          ),
          Align(
            alignment: .bottomCenter,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              height: Directions.kHeight * 0.4,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 42, 128, 156),
                borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
              ),
              child: Column(
                children: [
                  Text(
                    "أهلا بك في مؤسسة المسار",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text("للفئات الخاصه",style:TextStyle(color: const Color.fromARGB(255, 208, 198, 198),fontSize: 25,)),
                  SizedBox(height: 20,),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context){return RouteScreen(Screen: LoginScreen());}));
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 100),
                      child: Container(
                        height: Directions.kHeight * 0.06,
                        width: Directions.kWidth * 0.5,

                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              offset: Offset(8, 8),
                              blurRadius: 10,
                              spreadRadius: 5,
                            ),
                          ],
                        ),

                        child: Center(
                          child: Text(
                            "تسجيل الدخول",
                            style: TextStyle(color:  Color.fromARGB(255, 42, 128, 156),
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ), SizedBox(height: 15,),
                   InkWell(
                    onTap: () {
                       Navigator.push(context, MaterialPageRoute(builder: (context){return RouteScreen(Screen: SignUpScreen());}));
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 100),
                      child: Container(
                        height: Directions.kHeight * 0.06,
                        width: Directions.kWidth * 0.5,

                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              offset: Offset(8, 8),
                              blurRadius: 10,
                              spreadRadius: 5,
                            ),
                          ],
                        ),

                        child: Center(
                          child: Text(
                            "إنشاء حساب",
                            style: TextStyle(color:  Color.fromARGB(255, 42, 128, 156),
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: 0,
            left: 0,
            bottom: 0,
            height: Directions.kHeight * .1,
            child: CustomBottomNavBar(),
          ),
        ],
      ),
    );

    // bottomNavigationBar: BottomNavigationBar([]
    //   child: Container(
    //                   height: Directions.kHeight * 0.1,
    //                   width: double.infinity,
    //                   decoration: BoxDecoration(
    //                     color: Colors.white,
    //                     borderRadius: BorderRadius.only(
    //                       topLeft: Radius.circular(50),
    //                       topRight: Radius.circular(50),
    //                     ),
    //                     boxShadow: [
    //                       BoxShadow(color: Colors.black,),
    //                     ],
    //                   ),
    //                   child: ClipRRect(
    //                     borderRadius: BorderRadius.only(
    //                       topLeft: Radius.circular(50),
    //                       topRight: Radius.circular(50),
    //                     ),
    //                     child: BottomNavigationBar(
    //                       onTap: (value) {},
    //                       items: [
    //                         BottomNavigationBarItem(
    //                           icon: Icon(
    //                             Icons.home,
    //                             color: Color(0xff1380A5),
    //                             size: 30,
    //                           ),
    //                           label: 'Home',
    //                         ),
    //                         BottomNavigationBarItem(
    //                           icon: Icon(
    //                             Icons.notifications_outlined,
    //                             color: Color(0xff1380A5),
    //                             size: 30,
    //                           ),
    //                           label: 'Notifications',
    //                         ),
    //                         BottomNavigationBarItem(
    //                           icon: Icon(
    //                             Icons.calendar_month_outlined,
    //                             color: Color(0xff1380A5),
    //                             size: 30,
    //                           ),
    //                           label: 'Claneder',
    //                         ),
    //                         BottomNavigationBarItem(
    //                           icon: Icon(
    //                             Icons.person_outline,
    //                             color: Color(0xff1380A5),
    //                             size: 30,
    //                           ),
    //                           label: 'Profile',
    //                         ),
    //                       ],
    //                     ),
    //                   ),
    //                 ),
    // ),
  }
}
// 