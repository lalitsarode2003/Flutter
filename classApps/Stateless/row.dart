import 'package:flutter/material.dart';

void main(){
  runApp(const FirstApp());
}

class FirstApp extends StatelessWidget{
  const FirstApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Column App"),
          centerTitle: true,
          titleTextStyle: const TextStyle(backgroundColor: Colors.black,
          ),
          backgroundColor: Color.fromARGB(255, 243, 131, 33),
        ),
        body: Center(
          child:
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.amber,
              ),
              Container(
                width: 100,
                height: 100,
                color: const Color.fromARGB(255, 255, 7, 94),
              ),
              Container(
                width: 100,
                height: 100,
                color: const Color.fromARGB(255, 73, 7, 255),
              ),
               Container(
                width: 100,
                height: 100,
                color: const Color.fromARGB(255, 6, 174, 102),
              ),
            ],
          ) 
        ),
      ),
    );
  }
}