import'package:flutter/material.dart';

void main(){
  runApp( const MainApp());
}

class MainApp extends  StatelessWidget{
  const MainApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Hello Core2Web",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
          ),
          backgroundColor: Colors.deepPurple,
        ),
        body:Container(
           width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 360,
                height: 200,
                color: Colors.blue,
              )
            ],
                ),
        ),
      )
    );
  }

  

}

