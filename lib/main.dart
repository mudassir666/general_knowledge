import 'package:flutter/material.dart';

import 'general_knowledge.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //const MyApp({ Key? key }) : super(ke//y: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "GK",
      home: GeneralKnowledge(),
      theme: ThemeData(
          brightness: Brightness.dark, primaryColor: Colors.indigo[900]),
    );
  }
}
