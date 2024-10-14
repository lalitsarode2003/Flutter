import 'package:flutter/material.dart';

void main(){
  runApp(const MainApp());
}

class MainApp extends StatelessWidget{
  const MainApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar:AppBar(
          title: const Text(
            "Container Demo",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w700,
            ),
          ) ,
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Container(
            height: 200,
            width: 200,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              
              gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors:[
                  Colors.red,
                  Colors.orange,
                  Colors.pink,
                ],
              )
            ),
            child: const Text(
              "Hello!",
              style: TextStyle(
                fontSize: 30,
                fontWeight:FontWeight.w500,
              ),
            ) ,
          )
        ),
      ),
    );
  }
}