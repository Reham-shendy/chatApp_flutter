import 'package:flutter/material.dart';

class formfield extends StatelessWidget{
  String inputLabel;
  String iconName;
  formfield(this.iconName,this.inputLabel);
  IconData getIcon (String iconName){
    Map<String, IconData> icons = {
      "person": Icons.person,
      "password": Icons.password,
      "email": Icons.email
  };
    return icons[iconName] ?? Icons.help; // if no match
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(7),
      width: 250,
      height: 40,
      child: TextFormField(
        decoration: InputDecoration(labelText: inputLabel,
          enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(color:Colors.pinkAccent,),
          ),
          focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(color:Colors.pink, width:1.5 ,),
          ),
          filled: true,
          fillColor: Colors.pinkAccent.withOpacity(0.1),
          prefixIcon: Icon(getIcon(iconName)),
        ),
      ),
    );
  }

}