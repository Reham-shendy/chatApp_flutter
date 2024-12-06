import 'package:flutter/material.dart';

class chatpage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _chatpagestate();

}

class _chatpagestate extends State <chatpage>{
  final List<Message> messages = [
    Message(text: "Hello!", isSentByMe: false, time: "Mar 6, 2022"),
    Message(text: "Hi", isSentByMe: true, time: "Mar 6, 2022"),
    Message(text: "Do you have time tomorrow?", isSentByMe: true, time: ""),
    Message(text: "Yes sure!", isSentByMe: false, time: ""),
    Message(text: "Awesome! See you tomorrow at 8pm in the gym.", isSentByMe: true, time: ""),
    Message(text: "Yes! that's amazing.", isSentByMe: false, time: ""),

  ];
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: AppBar(
            backgroundColor: Colors.pink[200],
            leading:
               Row(
                children: [
                  Icon(Icons.arrow_back, color: Colors.white,),
                  SizedBox(width: 5,),
                  Icon(Icons.person, color: Colors.white,),

                ],
              ),
            actions: [
              Padding( padding:  EdgeInsets.only(right: 10),
                  child: Row
                    (
                      children: [
                        IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt_outlined, color: Colors.white,),),
                        IconButton(onPressed: (){}, icon: Icon(Icons.call, color: Colors.white,),),
                        IconButton(onPressed: (){}, icon: Icon(Icons.more_vert, color: Colors.white,),),
                      ]
                  )
              )
            ],
          ),
        ),
        body: Column(
          children: [
        // Chat messages
        Expanded(
        child: ListView.builder(
        reverse: true, // Start from the bottom
          itemCount: messages.length,
          itemBuilder: (context, index) {
            final message = messages[messages.length - 1 - index];
            return Column(
              crossAxisAlignment: message.isSentByMe
                  ? CrossAxisAlignment.end
                  : CrossAxisAlignment.start,
              children: [
                if (message.time.isNotEmpty)
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                        message.time,
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                    ),
                  ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12.0,
                    vertical: 6.0,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: message.isSentByMe
                          ? Colors.pinkAccent
                          : Colors.grey[300],
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16),
                        bottomLeft: message.isSentByMe
                            ? Radius.circular(16)
                            : Radius.zero,
                        bottomRight: message.isSentByMe
                            ? Radius.zero
                            : Radius.circular(16),
                      ),
                    ),
                    padding: EdgeInsets.all(12),
                    child: Text(
                      message.text,
                      style: TextStyle(
                        color: message.isSentByMe
                            ? Colors.white
                            : Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
        // Input field
        Container(
        padding: EdgeInsets.all(8.0),
          color: Colors.white,

          child: Row(
          children: [
          Expanded(
          child: TextField(controller: _controller,
          decoration: InputDecoration(
          hintText: "Type your message...",

          border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),

          ),
          contentPadding: const EdgeInsets.symmetric(
          vertical: 10.0, horizontal: 20.0),
          ),
          ),
          ),
          SizedBox(width: 8),
          CircleAvatar(
          radius: 24,
          backgroundColor: Colors.pinkAccent,
          child: IconButton(
          icon: Icon(Icons.send, color: Colors.white),
          onPressed: () {
          if (_controller.text.trim().isNotEmpty) {
          setState(() {
          messages.add(Message(
          text: _controller.text,
          isSentByMe: true,
          time: "",
          ));
          }
          );
          _controller.clear();
          }
                   },
                  ),
                 ),
                ],
               ),
              ),
             ],
            ),
           )
          );
        }
      }

class Message {
  final String text;
  final bool isSentByMe;
  final String time;

  Message({required this.text, required this.isSentByMe, required this.time});
}