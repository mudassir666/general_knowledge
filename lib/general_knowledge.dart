import 'package:flutter/material.dart';
import 'package:general_knowledge/question_image.dart';

class GeneralKnowledge extends StatefulWidget {
  const GeneralKnowledge({Key? key}) : super(key: key);

  @override
  _GeneralKnowledgeState createState() => _GeneralKnowledgeState();
}

class _GeneralKnowledgeState extends State<GeneralKnowledge> {
  final _question = const [
    {
      "image": "https://c4.wallpaperflare.com/wallpaper/734/17/274/adolf-anarchy-dark-evil-wallpaper-preview.jpg",
      "questionText": "Hitler party which came into power in 1933 is known as",
      "answers": [
        {"text": "Labour Party", "score": 0},
        {"text": "Nazi Party", "score": 1},
        {"text": "Ku-Klux-Klan", "score": 0},
        {"text": "Democratic Party", "score": 0},
      ]
    },
    {
      "image": "https://images.unsplash.com/photo-1563630381190-77c336ea545a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60",
      "questionText":
          "Exposure to sunlight helps a person improve his health because",
      "answers": [
        {"text": "the infrared light kills bacteria in the body", "score": 0},
        {"text": "resistance power increases", "score": 0},
        {
          "text":
              "the pigment cells in the skin get stimulated and produce a healthy tan",
          "score": 0
        },
        {
          "text": "the ultraviolet rays convert skin oil into Vitamin D ",
          "score": 1
        },
      ]
    },
    {
      "image": "https://images.unsplash.com/photo-1541339246244-261d72e381b7?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=667&q=80",
      "questionText": "First China War was fought between",
      "answers": [
        {"text": "China and Britain", "score": 1},
        {"text": "China and France", "score": 0},
        {"text": "China and Egypt", "score": 0},
        {"text": "China and Greek", "score": 0},
      ]
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetGame() {
    _questionIndex = 0;
    _totalScore - 0;
  }

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "GENERAL KNOWLEDGE",
        ),
        leading: Icon(
          Icons.book_rounded,
        ),
        centerTitle: true,
      ),
      body: _questionIndex < _question.length 
      ? Stack(
        fit: StackFit.expand,
        children: [
          Image.network("https://wallpapercave.com/wp/wp1960352.jpg",fit: BoxFit.cover,),
          Column(
            children: [
              Question_Image(_question[_questionIndex]["questionText"].toString(),_question[_questionIndex]["image"].toString()),
              
            ]
           )
        ],
      ) 
      : Container(),
    );
  }
}
