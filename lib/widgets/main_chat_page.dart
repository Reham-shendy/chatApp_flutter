import 'package:flutter/material.dart';
import 'package:chatapp_design/widgets/scroll.dart';


class main_chat_page extends StatefulWidget{
  @override
  State <main_chat_page> createState() => _MyAppState();

}

class _MyAppState extends State <main_chat_page>{
  int selectedIndex = 0;
  List <Widget> myWidgets = [
    scroll(),
    Text("state"),
    Text("com"),
    Text("call"),

  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar:
        AppBar(
          backgroundColor: Colors.pinkAccent,
          titleTextStyle: TextStyle(color: Colors.white),
          title: Text("Chat App",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,),) ,
          actions: [
            Padding( padding:  EdgeInsets.only(right: 10),
                child: Row
                  (
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt_outlined, color: Colors.white,),),
                      IconButton(onPressed: (){}, icon: Icon(Icons.search, color: Colors.white,),),
                      IconButton(onPressed: (){}, icon: Icon(Icons.more_vert, color: Colors.white,),),
                    ]
                )
            )
          ],
        ),
        body: myWidgets.elementAt(selectedIndex),

        bottomNavigationBar:
        BottomNavigationBar(
          onTap:(val){
            setState(() {
              selectedIndex = val ;
            });
          } ,
          currentIndex: selectedIndex ,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.pinkAccent[50],
          elevation: 20,
          selectedItemColor: Colors.blueAccent,
          unselectedItemColor: Colors.pinkAccent,
          selectedFontSize: 14,
          unselectedFontSize: 12,
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chats",),
            BottomNavigationBarItem(icon: Icon(Icons.circle_outlined), label: "Status",),
            BottomNavigationBarItem(icon: Icon(Icons.people_alt_rounded), label: "Communications",),
            BottomNavigationBarItem(icon: Icon(Icons.call), label: "Calls",),

          ],
        ) ,
      ),
    );
  }
}
