import 'package:flutter/material.dart';
import 'package:new_app/top_banner_home.dart';


class LoginScreen extends StatefulWidget {
  // final bool isLogoin;
 const LoginScreen({super.key});
  // const LoginScreen({super.key, required this.isLogoin});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Align(
        alignment: .bottomCenter,
        child: Container(child: TopBannerHome(),
          //
          height: 400,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.blueAccent,
            borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
          // ),
          // child: widget.isLogoin
          //     ? loginTextFiledAndButtonWidget()
          //     : SingupForm(),
        ),
      ),
    ));
  }
}