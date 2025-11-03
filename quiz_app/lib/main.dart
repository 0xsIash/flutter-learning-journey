import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  final List<Map<String,dynamic>> answersForFirstQuestion = [
    {
      "title" : "Madrid",
      "onPressed" : () => debugPrint("Madrid")
    },
    {
      "title" : "Rome",
      "onPressed" : () => debugPrint("Rome")
    },
    {
      "title" : "Paris",
      "onPressed" : () => debugPrint("Paris")
    },
    {
      "title" : "Berlin",
      "onPressed" : () => debugPrint("Berlin")
    },
  ];
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
                children: answersForFirstQuestion.map((answerMap) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent,
                      foregroundColor: Colors.white,
                    ),
                    onPressed: answerMap["onPressed"],
                    child: Text(
                      answerMap["title"],
                    ),
                
                    ),
                     
                ),
              ),).toList(),
              ),
              
            ],
          ),
        ),
      ),
    );
  }


}