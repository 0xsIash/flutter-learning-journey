import "package:flutter/material.dart";

void main(){
  runApp(Counter_App());
}

class Counter_App extends StatefulWidget{
  @override
  State<Counter_App> createState() => _Counter_AppState();
}

class _Counter_AppState extends State<Counter_App> {
  int counter = 0;

  void raiseCounter(){
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
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

        floatingActionButton: FloatingActionButton(onPressed: raiseCounter, child: Icon(Icons.add), backgroundColor: Colors.blueAccent,),
      ),
    );
  }
}