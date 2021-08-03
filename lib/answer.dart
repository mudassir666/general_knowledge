import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  //const Answer({ Key? key }) : super(k//ey: key);
  final String answerText;
  final VoidCallback answerHandler;

  Answer(this.answerHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          primary: Colors.white, //background color of button
          side: BorderSide(
              width: 3, color: Colors.indigo.shade900), //border width and color
          elevation: 3,
        ),
        onPressed: answerHandler,
        child: Text(
          answerText,
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold , fontSize: 16),
        ),
      ),
    );
  }
}
