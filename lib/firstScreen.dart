import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  //StateLessWidget is used if there is no interaction screen
  //StateLessWidget does not change or rebuild
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: FirstScreen());
  }
}

//StatefulWidget is used if there is interaction between user and this screen
//Fields in a Widget subclass are always marked "final".
//fromed from two classes
//first class extends from stateful widget
//next class extends from State<widget>
class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});
  // class here take final value
  @override
  State<FirstScreen> createState() => _FirstScreen();
}

class _FirstScreen extends State<FirstScreen> {
  // in stateful widget we use also build widget

  @override
  Widget build(BuildContext context) {
    final KWidth = MediaQuery.of(context).size.width;
    final kHeight = MediaQuery.of(context).size.height;
    List<String> lables = [
      "كتب",
      "منزل",
      "الكترونيات",
      "ملابس",
      "اجهزة",
      "اكلات",
      "مشروبات",
    ];
    List<Icon> IconsIn = [
      Icon(Icons.book),
      Icon(Icons.home),
      Icon(Icons.important_devices),
      Icon(Icons.checkroom),
      Icon(Icons.electric_bolt),
      Icon(Icons.food_bank),
      Icon(Icons.local_drink),
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Icon(Icons.menu),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Text("الرئيسية", style: TextStyle(fontSize: 23)),
          ),
        ],
        elevation: 12,
        shadowColor: Colors.grey,
        backgroundColor: Color.fromARGB(255, 22, 200, 158),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Container(
              //   height: 60.h,
              //   padding: EdgeInsets.symmetric(horizontal: 16),
              //   decoration: BoxDecoration(
              //     boxShadow: [
              //       BoxShadow(
              //         color: Colors.grey,
              //         offset: Offset(0, 5),
              //         blurRadius: 15,
              //       ),
              //     ],
              //     color: Color.fromARGB(255, 22, 200, 158),
              //   ),
              //   child: Row(
              //     children: [
              //       // actionsPadding: EdgeInsets.all(10),
              //       Icon(Icons.menu),
              //       Spacer(),
              //       Text("الرئيسية", style: TextStyle(fontSize: 23)),
              //     ],
              //   ),
              // ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    hintText: "حقل البحث",
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
              ),

              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Align(
                  alignment: .topRight,
                  child: Text(
                    "الفئات",
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 150,

                child: ListView.builder(
                  itemCount: lables.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, value) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Column(
                        mainAxisAlignment: .center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color.fromARGB(255, 225, 223, 223),
                            ),
                            width: 80,
                            height: 80,

                            child: Center(child: (IconsIn[value])),
                          ),
                          // Icon(Icons),
                          Text("${lables[value]}"),
                        ],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Align(
                  alignment: .topRight,
                  child: Text(
                    "المنتجات المميزة",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                height: kHeight * 0.5,
                child: GridView.count(
                  // physics: NeverScrollableScrollPhysics(),
                  // shrinkWrap: true,
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,

                  padding: EdgeInsets.all(20),
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(80),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                          child: Image.network(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLPhhMQqCS681-5MSI2Cr6J7rXfHn7U2mRZA&s",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(80),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(80),
                        child: Image.network(
                          "https://2b.com.eg/media/catalog/product/cache/d33f1c152d6eb7e8608a208d80f21a14/h/o/honor-400-silver-1.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(80),
                      ),
                      child: ClipRRect(
                        child: Image.network(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7G8LoWxxHsH3_Sx9LuHTO2BbqRaKRWr0Y0A&s",
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(80),
                      ),
                      child: ClipRRect(
                        child: Image.network(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQwa4f_odJ5X7iSsCyJ5iYPKewpn9zWmaNjng&s",
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(80),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(80),
                        child: Image.network(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcReFThuW59wZnn6qXLS07KtRHU00_26JRLl7g&s",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // Container(
              //   height: 100,

              //   child: Image.network("src", fit: BoxFit.cover),
              // ),
            ],
          ),
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   onTap: (value) {
      //     // Navigator.push(
      //     //   context,
      //     //   MaterialPageRoute(
      //     //     builder: (context) {
      //     //       return SecondScreen();
      //     //     },
      //     //   ),
      //     // );
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
    );
  }
}
