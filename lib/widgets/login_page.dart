import 'package:chatapp_design/widgets/sign_up.dart';
import 'package:flutter/material.dart';

import 'main_chat_page.dart';



class login_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body:
        Column(

          children: [
            Container(
              margin: EdgeInsets.only(top: 40),
              child: Text("Welcome Back", style: TextStyle(color: Colors.pinkAccent, fontWeight: FontWeight.bold,fontSize: 40),),),
            Container(
              child:
              Text("Enter your credential to login", style: TextStyle(color: Colors.black,fontSize: 12,)),

            ),
            Center(
              child: Container(
                margin: EdgeInsets.all(7),
                width: 250,
                height: 40,
                child: TextFormField(
                  decoration: InputDecoration(labelText: 'Username',
                    enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color:Colors.pinkAccent,),
                    ),
                    focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color:Colors.pink, width:1.5 ,),
                    ),
                    filled: true,
                    fillColor: Colors.pinkAccent.withOpacity(0.1),
                    prefixIcon: Icon(Icons.person),
                  ),
                ),
              ),
            ), //username
            Center(
              child: Container(
                margin: EdgeInsets.all(7),
                width: 250,
                height: 40,
                child: TextFormField(
                  decoration: InputDecoration(labelText: 'Password',
                    enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color:Colors.pinkAccent,),
                    ),
                    focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color:Colors.pink, width:1.5 ,),
                    ),
                    filled: true,
                    fillColor: Colors.pinkAccent.withOpacity(0.1),
                    prefixIcon: Icon(Icons.password),
                  ),
                ),
              ),
            ),  //pass
            Center(
              child:
              Container(
                width: 220,
                child: ElevatedButton(onPressed:() {
                  Navigator.push(context, MaterialPageRoute
                    (builder: (context) => main_chat_page()),);
                } ,
                  style: ButtonStyle(backgroundColor:MaterialStateProperty.all(Colors.pinkAccent),),
                  child: Text("Log in", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                ),
              ),
            ),  //ElevatedButton
            Center(
              child:  Container(
                margin: EdgeInsets.all(30),
                child:
                TextButton(onPressed: (){},
                  child: Text("Forgot password?", style: TextStyle(color: Colors.pinkAccent,fontWeight: FontWeight.bold)),
                ),
              ),
            ),  // forgot pass
            Center(
              child:
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
            ),  // sign up

          ],),

      ),
    );
  }
}
