import 'package:flutter/material.dart';

class AnswerItemModel {
  final String title;
  final VoidCallback onPressed;

  AnswerItemModel({required this.title, required this.onPressed});

}

    final List<AnswerItemModel> answersForFirstQuestion = [

      AnswerItemModel(title: "Madrid", onPressed: () => debugPrint("Madrid")),
      AnswerItemModel(title: "Rome", onPressed: () => debugPrint("Rome")),
      AnswerItemModel(title: "Paris", onPressed: () => debugPrint("Paris")),
      AnswerItemModel(title: "Madrid", onPressed: () => debugPrint("Berlin"))
  ];