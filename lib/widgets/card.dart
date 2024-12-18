import 'package:chatapp_design/widgets/chatpage.dart';
import 'package:flutter/material.dart';

class card extends StatelessWidget {
  int index;
  card(this.index);
  @override
  Widget build(BuildContext context) {
    return  Card(
      child : InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute
            (builder: (context) => chatpage()),);
        },
        child: const ListTile(
          leading:  CircleAvatar(
            backgroundImage:AssetImage("assets/images/pic1.jpg",),
            backgroundColor: Colors.pinkAccent,
          ),
          title:  Text("Person name", style: TextStyle(fontWeight: FontWeight.bold),),
          subtitle: Text("chat content"),
          trailing: Text("Yesterday", style: TextStyle(color: Colors.blueAccent),),
        ),
      ),
    );
  }
}
