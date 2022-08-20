import 'package:flutter/material.dart';
import 'package:login_regis/signUp.dart';


void main(){
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}


// Dont touch this class
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

// main code widget goes here
class _LoginPageState extends State<LoginPage> {

  final formKey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Form(
          key: formKey,
          child: Stack(

            children: [

              Container(
                color: Colors.blue[200],
              ),

              SingleChildScrollView(
                child: Container(

                  width: double.infinity,
                  padding: EdgeInsets.all(20),

                  child: Column(

                    children: [

                      Text('Login',
                        style: TextStyle(
                          fontSize: 35),
                      ),

                      SizedBox(
                        height: 30,
                      ),


                  ClipRRect(
                    borderRadius: BorderRadius.circular(80),
                    child: Image.asset(
                      'images/login.png',height: 150,
                    ),
                  ),

                      SizedBox(
                        height: 50,
                      ),

                      // For text Validation
                      TextFormField(
                        //what we wrote in to input field
                        validator: (value){
                          print('${value}');
                          if(value!.length !=10){
                            return 'Number is not correct';
                          }
                          else{
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                          hintText: 'Number',
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        keyboardType: TextInputType.number,
                      ),

                      SizedBox(
                        height: 30,
                      ),

                      // Overflow Won't happen we used ->> Singlechildscrollview
                      TextFormField(
                        //what we wrote in to input field
                        validator: (value){
                          print('${value}');
                          if(value!.length !=10){
                            return 'Number is not correct';
                          }
                          else{
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                          hintText: 'Number',
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        keyboardType: TextInputType.number,
                      ),

                      SizedBox(
                        height: 30,
                      ),

                      ElevatedButton(
                          onPressed: (){
                              if(formKey.currentState!.validate()){
                                print('Hurreee');
                              }
                              else{
                                print('Something is Wrong..');
                              }
                      },
                          child: Text('Submit')
                      ),

                      //Click Event for any widgets
                      GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const SignUp()),
                          );
                        },
                        child: Text('Sign Up ?',
                          style: TextStyle(
                              fontSize: 35),
                        ),
                      ),


                    ],
                  ),

                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
