import 'package:chatapp_design/widgets/login_page.dart';
import 'package:chatapp_design/widgets/sign_in_G.dart';
import 'package:flutter/material.dart';
import 'package:chatapp_design/widgets/formfield.dart';
import 'package:chatapp_design/widgets/main_chat_page.dart';



class sign_up extends StatelessWidget{

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
                child: Text("Sign Up", style: TextStyle(color: Colors.pinkAccent, fontWeight: FontWeight.bold,fontSize: 40),),),
              Container(
                child:
                Text("Create your account", style: TextStyle(color: Colors.black,)),

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
                      child: Text("Sign Up", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),

                    ),
                  ),
                  Container(
                    child:
                    Text("Or", style: TextStyle(color: Colors.black,)),
                  ), // or
                  Container(
                    width: 220,
                    child: OutlinedButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute
                        (builder: (context) => sign_in_G()),);
                    },
                      child: Text("Sign in with Google", style: TextStyle(color: Colors.pinkAccent),),
                      style: OutlinedButton.styleFrom(side: BorderSide(color: Colors.pinkAccent),),
                    ),

                  ), //outlinedButton
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child:
                        Text("Already have an account ?", style: TextStyle(color: Colors.black,)),

                      ),
                      Container(
                        child:
                        TextButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute
                            (builder: (context) => login_page()),);
                        },
                          child: Text("Log in", style: TextStyle(color: Colors.pinkAccent,fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ],
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