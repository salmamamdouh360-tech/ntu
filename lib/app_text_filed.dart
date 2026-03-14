import 'package:flutter/material.dart';

class AppTextFiled extends StatefulWidget {
  

    final Icon;
    final HintText;
     AppTextFiled(this.HintText,this.Icon);
  @override
  State<AppTextFiled> createState() => AppTextFiledState();
}

class AppTextFiledState extends State<AppTextFiled> {
  @override
  Widget build(BuildContext context) {
    
    
    return Container(
      padding: EdgeInsets.all(20),
      child: TextField(
        
        decoration: InputDecoration(
          
          filled: true,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
       
        
        ),
        
      ),
      
    );
    
  }
}