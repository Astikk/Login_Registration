import 'package:flutter/material.dart';

// Ignore this calss for now..
class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}


// Main to write..
class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Text('Sign Up'),
      ),
    );
  }
}










//PUSH / POP NAVIGATOR