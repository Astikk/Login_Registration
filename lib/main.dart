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

              Container(

                width: double.infinity,
                padding: EdgeInsets.all(20),

                child: Column(

                  children: [

                    Text('Login',
                      style: TextStyle(
                        fontSize: 35),
                    ),

                ClipRRect(

                  borderRadius: BorderRadius.circular(80),
                  child: Image.asset(
                    'images/login.png',height: 150,
                  ),
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
                    )
                  ],
                ),

              )
            ],
          ),
        ),
      ),
    );
  }
}
