import 'package:flutter/material.dart';

class formfield extends StatelessWidget{

  String inputLabel;
  String iconName;
  String? Function(String?)? validator;

  formfield(this.iconName,this.inputLabel,{this.validator});
  IconData getIcon (String iconName){
    Map<String, IconData> icons = {
      "person": Icons.person,
      "password": Icons.lock,
      "email": Icons.email
  };
    return icons[iconName] ?? Icons.help; // if no match
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      margin:  EdgeInsets.all(7),
      width: 250,
      height: 50,
      child: TextFormField(
        validator: validator, // use the passed validator function
        decoration: InputDecoration(labelText: inputLabel,
          isDense: true,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(color:Colors.pinkAccent,)),
          enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(25),
            borderSide: const BorderSide(color:Colors.pinkAccent,),
          ),
          focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(color:Colors.pink, width:1.5 ,),
          ),
          errorBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(color:Colors.pink, width:1.5 ,),
          ),
          errorStyle: TextStyle(fontSize: 8,fontWeight: FontWeight.bold,height: 0.8,),
          filled: true,
          fillColor: Colors.pinkAccent.withOpacity(0.1),
          prefixIcon: Icon(getIcon(iconName)),
        ),
      ),
    );
  }

}