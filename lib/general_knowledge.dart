import 'package:flutter/material.dart';
import 'package:general_knowledge/answer.dart';
import 'package:general_knowledge/question_image.dart';
import 'package:general_knowledge/result.dart';

class GeneralKnowledge extends StatefulWidget {
  const GeneralKnowledge({Key? key}) : super(key: key);

  @override
  _GeneralKnowledgeState createState() => _GeneralKnowledgeState();
}

class _GeneralKnowledgeState extends State<GeneralKnowledge> {
  final _question = const [
    {
      "image":
          "https://c4.wallpaperflare.com/wallpaper/734/17/274/adolf-anarchy-dark-evil-wallpaper-preview.jpg",
      "questionText": "Hitler party which came into power in 1933 is known as",
      "answers": [
        {"text": "Labour Party", "score": 0},
        {"text": "Nazi Party", "score": 1},
        {"text": "Ku-Klux-Klan", "score": 0},
        {"text": "Democratic Party", "score": 0},
      ]
    },
    {
      "image":
          "https://images.unsplash.com/photo-1563630381190-77c336ea545a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60",
      "questionText":
          "Exposure to sunlight helps a person improve his health because",
      "answers": [
        {"text": "the infrared light kills bacteria in the body", "score": 0},
        {"text": "resistance power increases", "score": 0},
        {
          "text":
              "the pigment cells produce a healthy tan",
          "score": 0
        },
        {
          "text": "the ultraviolet rays convert skin oil into Vitamin D ",
          "score": 1
        },
      ]
    },
    {
      "image":
          "https://images.unsplash.com/photo-1541339246244-261d72e381b7?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=667&q=80",
      "questionText": "First China War was fought between",
      "answers": [
        {"text": "China and Britain", "score": 1},
        {"text": "China and France", "score": 0},
        {"text": "China and Egypt", "score": 0},
        {"text": "China and Greek", "score": 0},
      ]
    },
    {
      "image":
          "https://www.teachpe.com/wp-content/uploads/2019/09/friction300.jpg",
      "questionText": "Friction can be reduced by changing from",
      "answers": [
        {"text": "rolling to sliding", "score": 0},
        {"text": "potential energy to kinetic energy", "score": 0},
        {"text": "dynamic to static", "score": 0},
        {"text": "sliding to rolling", "score": 1},
      ]
    },
    {
      "image":
          "https://upload.wikimedia.org/wikipedia/commons/2/24/Zoroastrian_Fire_Temple%2C_Yazd_%282%29.jpg",
      "questionText":
          "Fire temple is the place of worship of which of the following religion?",
      "answers": [
        {"text": "Taoism", "score": 0},
        {"text": "Judaism", "score": 0},
        {"text": "Zoroastrianism", "score": 1},
        {"text": "Shintoism", "score": 0},
      ]
    },
    {
      "image":
          "https://images.theconversation.com/files/225470/original/file-20180629-117385-l1wiu.jpg?ixlib=rb-1.1.0&q=45&auto=format&w=1200&h=1200.0&fit=crop",
      "questionText":
          "Georgia, Uzbekistan and Turkmenistan became the members of UNO in",
      "answers": [
        {"text": "1991", "score": 0},
        {"text": "1992", "score": 1},
        {"text": "1993", "score": 0},
        {"text": "1994", "score": 0},
      ]
    },
    {
      "image":
          "https://cdn.britannica.com/78/177078-050-EFCF854A/Adolf-Hitler-front-Paris-Eiffel-Tower-France-June-1940.jpg",
      "questionText": "During World War II, when did Germany attack France?",
      "answers": [
        {"text": "1940", "score": 1},
        {"text": "1941", "score": 0},
        {"text": "1942", "score": 0},
        {"text": "1943", "score": 0},
      ]
    },
    {
      "image":
          "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/best-sources-of-protein-guide-image-700-350-5990313.jpg?quality=90&resize=768,574",
      "questionText":
          "Of the following foods, which one is the best source of protein?",
      "answers": [
        {"text": "Butter", "score": 0},
        {"text": "Lettuce", "score": 0},
        {"text": "Milk", "score": 0},
        {"text": "Fish", "score": 1},
      ]
    },
    {
      "image":
          "https://qph.fs.quoracdn.net/main-qimg-1bb012541eab4437aea71a2c3cb0aa7d",
      "questionText":
          "Liquids transmit pressure equally in all directions. This is known as",
      "answers": [
        {"text": "Boyle-Pascal's Law", "score": 0},
        {"text": "Pascal's Law", "score": 1},
        {"text": "Archimedes' Principle", "score": 0},
        {"text": "None of the above", "score": 0},
      ]
    },
    {
      "image":
          "https://qph.fs.quoracdn.net/main-qimg-b0fd2d236be7a637878a918c3d88079c",
      "questionText": "Most commonly used bleaching agent is",
      "answers": [
        {"text": "alcohol", "score": 0},
        {"text": "carbon dioxide", "score": 0},
        {"text": "chlorine", "score": 1},
        {"text": "sodium chloride", "score": 0},
      ]
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetGame() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(String score) {
    _totalScore = _totalScore + int.parse(score);
    setState(() {
      _questionIndex++;
    });
    print("index : $_questionIndex");
    print("score : $_totalScore");
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
                Image.network(
                  "https://wallpapercave.com/wp/wp1960352.jpg",
                  fit: BoxFit.cover,
                ),
                Column(children: [
                  Question_Image(
                      _question[_questionIndex]["questionText"].toString(),
                      _question[_questionIndex]["image"].toString()),
                  ...(_question[_questionIndex]["answers"]
                          as List<Map<String, Object>>)
                      .map((answer) {
                    return Answer(
                        () => _answerQuestion(answer["score"].toString()),
                        answer["text"].toString());
                  }).toList()
                ])
              ],
            )
          : Result(_totalScore, _resetGame),
    );
  }
}
