import 'package:chatapp_design/widgets/login_page.dart';
import 'package:flutter/material.dart';
import 'package:chatapp_design/widgets/formfield.dart';
import 'package:chatapp_design/widgets/main_chat_page.dart';



class sign_in_G extends StatelessWidget{

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
                child: Column(children: [
                  formfield("person", "Username"),
                  formfield("email", "Email"),
                  formfield("password", "Password"),
                  formfield("password", "Confirm Password"),
                  Container(
                    width: 220,
                    child: ElevatedButton(onPressed:() {

                      Navigator.push(context, MaterialPageRoute
                        (builder: (context) => main_chat_page()),);

                    } ,
                      style: ButtonStyle(backgroundColor:MaterialStateProperty.all(Colors.pinkAccent),),
                      child: const Text("Sign in", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),

                    ),
                  ),
                ],
                ),
              ), //username
            ],
          ),
        ),

      ),
    );
  }
}