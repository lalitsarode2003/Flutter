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
            "Flutter",
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.w600,
              color: Colors.purple,
            ),
          ),
          backgroundColor: Colors.black,
          
          actions: [
            IconButton(
              onPressed:(){} ,
               icon: const Icon(Icons.info))
              
          ],
          

        ),
      )
    );
  }

  

}

