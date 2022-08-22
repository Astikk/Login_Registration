import 'dart:ffi';

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
    return  MaterialApp(
      home: Scaffold(
        body: Form(
            child: Container(
              height: double.infinity,
              color: Colors.blue[200],
              padding: EdgeInsets.all(20),
              child: SingleChildScrollView(
                child:

              Column(
               children: [

                 SizedBox(
                   height: 40,
                 ),

                 Text('Register',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),


                 SizedBox(
                   height: 40,
                 ),

                 TextFormField(
                   validator: (val){
                     if(val!.length<3)
                       {
                         print('Too short');
                       }
                     else {
                       return null;
                     }
                   },

                   decoration: InputDecoration(
                     hintText: 'Name',
                     fillColor: Colors.white,
                     filled: true,
                     border: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(20),
                     )
                   ),
                 ),

                 SizedBox(
                   height: 50,
                 ),

                 TextFormField(
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
                   height: 50,
                 ),

                 TextFormField(
                   decoration: InputDecoration(
                     hintText: 'Email',
                     fillColor: Colors.white,
                     filled: true,
                     border: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(20),
                     )
                   ),
                 ),

                 SizedBox(
                   height: 50,
                 ),

                 TextFormField(
                   obscureText: true,
                   decoration: InputDecoration(
                     hintText: 'Password',
                     fillColor: Colors.white,
                     filled: true,
                     border: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(20),
                     )
                   ),
                 ),

                 GestureDetector(
                   onTap: (){

                   },
                   child: Text('Submit'),
                 )



               ],

              ),

              )

            ),

        ),

      ),

    );

  }
}










//PUSH / POP NAVIGATOR