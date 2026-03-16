import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Text(
                "قيد التنفيذ",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              Text(
                "مكتملة",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              Text(
                "ملغاه",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          toolbarHeight: 80,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10, top: 35),
              child: Align(
                alignment: .topStart,
                child: Text(
                  "طلباتى",
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
          elevation: 12,
          shadowColor: Colors.grey,
          backgroundColor: Color.fromARGB(255, 22, 200, 158),
        ),
        body: TabBarView(
          children: <Widget>[
            Image.network(
              "https://2b.com.eg/media/catalog/product/cache/d33f1c152d6eb7e8608a208d80f21a14/h/o/honor-400-silver-1.jpg",
            ),
          ],
        ),

        // bottomNavigationBar: BottomNavigationBar(
        //   onTap: (value) {
        //     Navigator.push(
        //       context,
        //       MaterialPageRoute(
        //         builder: (context) {
        //           return SecondScreen();
        //         },
        //       ),
        //     );
        //   },
        //   items: [
        //     BottomNavigationBarItem(
        //       icon: Icon(
        //         Icons.home,
        //         color: Color.fromARGB(255, 17, 155, 123),
        //         size: 30,
        //       ),
        //       label: 'Home',
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(
        //         Icons.search,
        //         color: Color.fromARGB(255, 17, 155, 123),
        //         size: 30,
        //       ),
        //       label: 'search',
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(
        //         Icons.shopping_cart,
        //         color: Color.fromARGB(255, 17, 155, 123),
        //         size: 30,
        //       ),
        //       label: 'cart',
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(
        //         Icons.person_outline,
        //         color: Color.fromARGB(255, 17, 155, 123),
        //         size: 30,
        //       ),

        //       label: 'Profile',
        //     ),
        //   ],
        // ),
      ),
    );
  }
}
