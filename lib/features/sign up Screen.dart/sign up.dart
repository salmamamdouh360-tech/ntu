import 'package:flutter/material.dart';

class SingupForm extends StatefulWidget {
  const SingupForm({super.key});

  @override
  State<SingupForm> createState() => _SingupFormState();
}

class _SingupFormState extends State<SingupForm> {
  @override
  Widget build(BuildContext context) {
    return const Column(children: [Text('this is singup')]);
  }
}