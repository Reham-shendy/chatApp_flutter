import 'package:flutter/material.dart';

import 'card.dart';

class scroll extends StatelessWidget {
  List<card> cards = [];

  increment(){
    for(int i=0;i <= 15 ;i++){
      cards.add(card(i));
    }
  }

  scroll(){
    increment();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: cards,
        ),
      ),
    );
  }
}
