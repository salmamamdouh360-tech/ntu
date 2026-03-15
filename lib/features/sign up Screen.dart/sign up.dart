import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:new_app/app_text_filed.dart';
import 'package:new_app/features/home/homeScreen.dart';
import 'package:new_app/route_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool isChecked=false;
  @override
  Widget build(BuildContext context) {
    
    return 
    Column(children: [
      SizedBox(height: 20,),
     AppTextFiled("الاسم الكامل", Icons.person_outline_outlined, Colors.black12),
     SizedBox(height: 20,),
      AppTextFiled("البريد الإلكتروني", Icons.sms, Colors.black12),
      SizedBox(height: 20,),
       AppTextFiled("رقم الموبايل مع رمز الدولة بدون (+)", Icons.phone, Colors.black12),
      SizedBox(height: 20,),
        AppTextFiled("كلمة المرور", Icons.card_travel, Colors.black12),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
             const Text('أوافق على الشروط و الأحكام'),
             
            Checkbox(
              value: isChecked??false, // Binds the checkbox's visual state to the variable
              onChanged: (bool? newValue) {
                // The onChanged callback is called when the user taps the checkbox
                setState(() {
                  // Update the state variable using setState
                  isChecked = newValue??false;
                });
              },
              activeColor: Colors.green, // Color when checked
              checkColor: Colors.white, // Color of the tick mark
            ),
            // A label for the checkbox
          ],
        ),SizedBox(height: 15,),
         Column(
                  mainAxisAlignment: .center,
                  crossAxisAlignment: .center,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context){return RouteScreen(Screen: HomeScreen());}));
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
                            "إنشاء حساب ",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
          
                    SizedBox(height: Directions.kHeight * 0.01),
                    Text.rich(
                      TextSpan(
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                        ),
          
                        children: [
                          TextSpan(text: " لديك حساب ؟    "),
                          
                          TextSpan(
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                            text: "تسجيل دخول ",
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) {
                                      return HomeScreen();
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
    ]
    
    );
   
  }
}