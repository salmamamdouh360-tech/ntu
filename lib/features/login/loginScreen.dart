import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:new_app/app_text_filed.dart';
import 'package:new_app/features/sign%20up%20Screen.dart/sign%20up.dart';
import 'package:new_app/route_screen.dart';

class LoginScreen extends StatefulWidget {
  //   final bool isLogoin;
  //  const LoginScreen({super.key, required this.isLogoin});
  // const LoginScreen({super.key, required this.isLogoin});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isOnTab = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: .center,
          children: [
            SizedBox(height: 10),
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
            SizedBox(height: 15),
            AppTextFiled("رقم الهاتف", Icons.phone, Color(0xff1380A5)),
            SizedBox(height: 15),
            // Align(alignment: AlignmentGeometry.centerLeft,
            AppTextFiled(
              "كلمة المرور",
              Icons.carpenter_outlined,
              Color(0xff1380A5),
            ),
          ],
        ),

        Column(
          crossAxisAlignment: .start,
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  isOnTab = !isOnTab;
                });
              },
              child: Text(
                "هل نسيت كلمة المرور ؟",
                style: TextStyle(color: !isOnTab ? Colors.red : Colors.white),
              ),
            ),
          ],
        ),
        SizedBox(height: 35),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 90),
          child: Column(
            mainAxisAlignment: .center,
            crossAxisAlignment: .center,
            children: [
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, "/");
                },
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
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(height: Directions.kHeight * 0.02),
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
                        ..onTap = () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) {
                                return RouteScreen(Screen: SignUpScreen());
                              },
                            ),
                          );
                        },
                    ),
                  ],
                ),
              ),

              // FloatingActionButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (_){
              //   return LoginScreen();
              // }
              // )
              // )
              // ;
              // },
              // ],
              // SizedBox(height: 90),
            ],
          ),
        ),
      ],
    );
  }
}
