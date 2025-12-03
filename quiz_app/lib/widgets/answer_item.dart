import 'package:flutter/material.dart';
import 'package:quiz_app/models/answer_item_model.dart';

class AnswerItem extends StatelessWidget {
  final AnswerItemModel answerMap;
  const AnswerItem({super.key, required this.answerMap});

  @override
  Widget build(BuildContext context) {
    return Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent,
                      foregroundColor: Colors.white,
                    ),
                    onPressed: answerMap.onPressed,
                    child: Text(
                      answerMap.title,
                    ),
                
                    ),
                     
                ),
              );
  }
}