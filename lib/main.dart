import 'package:flutter/material.dart';

void main(){
  runApp(LoginPage());
}


// Dont touch this class
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}


class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Container(
              color: Colors.blue[200],
            ),
            Container(

              padding: EdgeInsets.all(20),
              alignment: Alignment.center,
              child: Column(
                children: [
                  Text('Login',style: TextStyle(
                      fontSize: 35),
                  ),
                  Image.asset('images/login.png',height: 120,),
                ],
              ),

            )
          ],
        ),
      ),
    );
  }
}
