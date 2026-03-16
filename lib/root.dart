import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_app/firstScreen.dart';
import 'package:new_app/secondScreen.dart';

class Root extends StatefulWidget {
  const Root({super.key});

  @override
  State<Root> createState() => _RootState();
}

class _RootState extends State<Root> {
  late List<Widget> screen;
  int currentPage = 0;
  @override
  void initState() {
    screen = [FirstScreen(), SecondScreen()];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        body: IndexedStack(
          // physics: NeverScrollableScrollPhysics(),
          // controller: pageController,
          // onPageChanged: (index) {
          //   setState(() {
          //     currentPage = index;
          //   });
          // },
          index: currentPage,
          // physics: NeverScrollableScrollPhysics(),
          // controller: pageController,
          // onPageChanged: (index) {
          //   setState(() {
          //     currentPage = index;
          //   });
          // },
          children: screen,
        ),
        bottomNavigationBar: Container(
          padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
          ),
          child: BottomNavigationBar(
            currentIndex: currentPage,
            onTap: (index) {
              setState(() {
                currentPage = index;
              });
            },
            elevation: 0,
            backgroundColor: Colors.transparent,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Color.fromARGB(255, 17, 155, 123),
            unselectedItemColor: Colors.grey.shade500,
            items: [
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.cart),
                label: 'Cart',
              ),
              // BottomNavigationBarItem(
              //   icon: Icon(CupertinoIcons.folder_solid),
              //   label: 'Orders',
              // ),
              // BottomNavigationBarItem(
              //   icon: Icon(CupertinoIcons.person),
              //   label: 'Profile',
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
