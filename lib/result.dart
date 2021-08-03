import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetQuiz;
  Result(this.resultScore, this.resetQuiz);

  
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Stack(fit: StackFit.expand, children: [
      Image.network(
        "https://wallpapercave.com/wp/wp1960352.jpg",
        fit: BoxFit.cover,
      ),
      Column(
        children: [
          SizedBox(
            height: 300,
          ),
          Text(
            "You Got $resultScore/10",
            style: TextStyle(color: Colors.white,fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          primary: Colors.white, //background color of button
          side: BorderSide(
              width: 3, color: Colors.indigo.shade900), //border width and color
          elevation: 3,
        ),
        onPressed: resetQuiz,
        child: Text(
          "RESET",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold , fontSize: 16),
        ),
      ),
        ],
      ),
    ]));
  }
}
