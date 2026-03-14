import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:new_app/app_text_filed.dart';
import 'package:new_app/features/login/loginScreen.dart';

class TopBannerHome extends StatelessWidget {
  const TopBannerHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        
        Align(
          alignment: AlignmentGeometry.topCenter,
          child: Image.asset(
            "assets/logo.jpeg",
            fit: BoxFit.contain,
            width: double.infinity,
          ),
        ),
        Align(
          alignment: AlignmentGeometry.bottomCenter,
          child: Container(
            height: 500,
            width: double.infinity,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 42, 128, 156),
              borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                
                Text(
                  "أهلا بك نحن سعداء بعودتك",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                Text(
                  "من فضلك قم بتسجيل الدخول",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                AppTextFiled("رقم الهاتف", Icons.phone),
                Align(alignment: AlignmentGeometry.centerLeft,
                  child: Text("هل نسيت كلمة المرور ؟",style: TextStyle(color: Colors.white),),
                ),
                AppTextFiled("كلمة المرور", Icons.carpenter_outlined),
                Text.rich(
                  TextSpan(
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                      
                    ),
                    
                    children: [
                      
                      TextSpan(text: "ليس لديك حساب ؟"),
                      TextSpan(
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                        text: " إنشاء حساب",
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {Navigator.pushNamed(context, "/");
                            
                          },
                      ),
                      
                    ],
                  ),
                ),
              FloatingActionButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (_){
                return LoginScreen();
              }));},child:  Text("تسجيل الدخول")),],
            ),
          ),
        )
        
        ]
        
        );

    //     Align(
    //       alignment: AlignmentGeometry.bottomEnd,
    //       child: Container(
    //         height: 90,
    //         width: double.infinity,
    //         decoration: BoxDecoration(
    //           color: Colors.white,
    //           borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
    //         ),

    //         child: Row(
    //           children: [
    //             SizedBox(width: 20),
    //             IconButton(
    //               onPressed: () {},
    //               icon: Icon(Icons.home),
    //               color: const Color.fromARGB(255, 42, 128, 156),
    //               iconSize: 30,
    //             ),
    //             SizedBox(width: 40),
    //             IconButton(
    //               onPressed: () {},
    //               icon: Icon(Icons.notifications_outlined),
    //               color: const Color.fromARGB(255, 42, 128, 156),
    //               iconSize: 30,
    //             ),
    //             SizedBox(width: 40),
    //             IconButton(
    //               onPressed: () {},
    //               icon: Icon(Icons.calendar_month_outlined),
    //               color: const Color.fromARGB(255, 42, 128, 156),
    //               iconSize: 30,
    //             ),
    //             SizedBox(width: 40),
    //             IconButton(
    //               onPressed: () {},
    //               icon: Icon(Icons.person_3_outlined),
    //               color: const Color.fromARGB(255, 42, 128, 156),
    //               iconSize: 30,
    //             ),
    //             SizedBox(width: 20),
    //           ],
    //         ),
    //       ),
    //     ),
    //   ],
    // );

   
  }
}
