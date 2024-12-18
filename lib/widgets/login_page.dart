import 'package:chatapp_design/widgets/formfield.dart';
import 'package:chatapp_design/widgets/sign_up.dart';
import 'package:flutter/material.dart';

import 'main_chat_page.dart';



class login_page extends StatelessWidget {
  GlobalKey<FormState> _formkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body:
        SingleChildScrollView(
          child: Form(
            key: _formkey,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 40),
                  child: Text("Welcome Back", style: TextStyle(color: Colors.pinkAccent, fontWeight: FontWeight.bold,fontSize: 40),),),
                Container(
                  child:
                  Text("Enter your credential to login", style: TextStyle(color: Colors.black,fontSize: 12,)),
                ),
                formfield("person", "Username", validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter your username.";
                  }
                  return null;
                },
                ),
                formfield("password", "Password",
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter your password.";
                    }
                    if (value.length < 8) {
                      return "Password must be at least 8 characters.";
                    }
                    return null;
                  },
                ),
                  Container(
                    width: 220,
                    child: ElevatedButton(onPressed:() {
                      if(_formkey.currentState!.validate()){
                        Navigator.push(context, MaterialPageRoute
                          (builder: (context) => main_chat_page()),);
                      }
                    } ,
                      style: ButtonStyle(backgroundColor:MaterialStateProperty.all(Colors.pinkAccent),),
                      child: Text("Log in", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                    ),
                  ),
                 //ElevatedButton
                 Container(
                    margin: EdgeInsets.all(30),
                    child:
                    TextButton(onPressed: (){},
                      child: Text("Forgot password?", style: TextStyle(color: Colors.pinkAccent,fontWeight: FontWeight.bold)),
                    ),
                  ),
                // forgot pass
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child:
                        Text("Don't have an account ?", style: TextStyle(color: Colors.black,)),

                      ),
                      Container(
                        child:
                        TextButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute
                            (builder: (context) => sign_up()),);
                        },
                          child: Text("Sign Up", style: TextStyle(color: Colors.pinkAccent,fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ],
                  ),
                 // sign up

              ],),
          ),
        ),

      ),
    );
  }
}
