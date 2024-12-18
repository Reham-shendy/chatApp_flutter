import 'package:chatapp_design/widgets/login_page.dart';
import 'package:flutter/material.dart';
import 'package:chatapp_design/widgets/formfield.dart';
import 'package:chatapp_design/widgets/main_chat_page.dart';



class sign_in_G extends StatelessWidget{
  String? pass;
  GlobalKey<FormState> _formkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(

      home: Scaffold(
        appBar: AppBar( ),
        body:
        SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Text("Sign in with Google", style: TextStyle(color: Colors.pinkAccent, fontWeight: FontWeight.bold,fontSize: 30),),

              ),
              Center(
                child: Form(
                  key: _formkey,
                  child: Column(

                    children: [
                    formfield("person", "Username", validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter your username.";
                      }
                      return null;
                    },
                    ),
                    formfield("email", "Email",validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter your email.";
                      }
                      if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                        return "Enter a valid email address.";
                      }
                      return null;
                    },
                    ),
                    formfield("password", "Password",
                      validator: (value) {
                      pass = value;
                        if (value == null || value.isEmpty) {
                          return "Please enter your password.";
                        }
                        if (value.length < 8) {
                          return "Password must be at least 8 characters.";
                        }
                        return null;
                      },
                    ),
                    formfield("password", "Confirm Password",
                      validator: (value) {
                        // You can pass the actual password here for comparison
                        if (value == null || value.isEmpty) {
                          return "Please confirm your password.";
                        }
                        else if (pass != value){
                          return "password doesn't match.";
                        }
                        return null;
                      },
                    ),
                    Container(
                      width: 220,
                      child: ElevatedButton(onPressed:() {
                        if (_formkey.currentState!.validate()) {
                          // Proceed only if form is valid
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => main_chat_page()),
                          );
                        }
                      } ,
                        style: ButtonStyle(backgroundColor:MaterialStateProperty.all(Colors.pinkAccent),),
                        child: const Text("Sign in", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),

                      ),
                    ),
                  ],
                  ),
                ),
              ), //username
            ],
          ),
        ),

      ),
    );
  }
}