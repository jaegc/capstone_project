import 'package:flutter/material.dart';

main (){
  runApp(CardApp());
}

class CardApp extends StatelessWidget{
  build(context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title : Text('Welcome Cardinal!'),
        ),
      ),
    );
    }
  }


