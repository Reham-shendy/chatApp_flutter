import 'package:chatapp_design/widgets/scroll.dart';
import 'package:chatapp_design/widgets/sign_up.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget{
  @override
  State <MyApp> createState() => _MyAppState();

}

class _MyAppState extends State <MyApp>{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: sign_up(),
    );
  }
}

