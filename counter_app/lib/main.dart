import "package:flutter/material.dart";

void main(){
  runApp(CounterApp());
}

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int counter = 0;

  void raiseCounter(){
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Text(
            "Counter App",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),

        body: Center(
          child: Text(
            "$counter",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.pinkAccent,
              fontSize: 36,
            ),
            ),
        ),

        floatingActionButton: FloatingActionButton(onPressed: raiseCounter, backgroundColor: Colors.blueAccent, child: Icon(Icons.add)),
      ),
    );
  }
}