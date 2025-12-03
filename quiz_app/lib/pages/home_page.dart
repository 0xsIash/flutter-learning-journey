import 'package:flutter/material.dart';
import 'package:quiz_app/models/answer_item_model.dart';
import 'package:quiz_app/widgets/answer_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  
  @override
  Widget build(BuildContext context) {

  
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              "Home",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              ),
          ),
          backgroundColor: Colors.blueAccent,
        ),

        body: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Text(
                    "What is the capital city of France?",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: Colors.blueAccent,
                    ),
                ),
              ),


              Column(
                children: answersForFirstQuestion.map((answerMap) => AnswerItem(answerMap: answerMap)
              ).toList(),
              ),
              
            ],
          ),
        ),
      );
  }
}