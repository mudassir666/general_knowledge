import 'package:flutter/material.dart';

// ignore: camel_case_types
class Question_Image extends StatelessWidget {
  //const Question_Image({ Key? key }) :// super(key: key);
  final String questionText;
  final String imageUrl;

  Question_Image(this.questionText, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Card(
          color: Colors.white,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  questionText,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Image.network(
                imageUrl,
              //  fit: BoxFit.contain,
                height: 300,
                width: 300,
              ),
               SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
