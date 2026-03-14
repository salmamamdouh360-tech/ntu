import 'package:flutter/material.dart';

import 'package:new_app/top_banner_home.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: 
          TopBannerHome(
            
          ),
          
        
      ), 
       

bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {},

          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Color(0xff1380A5)),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications, color: Color(0xff1380A5)),
              label: 'Notifications',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month, color: Color(0xff1380A5)),
              label: 'Claneder',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person, color: Color(0xff1380A5)),
              label: 'Profile',
            ),
          ],
        ),
); 
  
  }
   
}