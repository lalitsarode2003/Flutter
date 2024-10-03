import 'package:flutter/material.dart';
void main(){
  runApp(const MainApp());
}
class MainApp extends StatelessWidget{
  const MainApp({super.key});

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      title: "Insta",
      home: HomeScreen(),
    );
  }
}
class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar:AppBar(
          title:const Text("Insta Stories"),
          centerTitle: true,
          backgroundColor:const Color.fromARGB(255, 31, 193, 218),
          ),
        body:SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child:Row(
             children:[
              Container(
               width:100,
              height:100,
              decoration: const BoxDecoration(
                color: Color.fromARGB(213, 194, 37, 37), shape: BoxShape.circle,
              ),
                
                ),
              Container(
                width:100,
                height:100,
                decoration: const BoxDecoration(
                color: Color.fromARGB(255, 43, 148, 46), shape: BoxShape.circle,
              ),
                
              ),
              Container(
                width:100,
                height:100,
                decoration: const BoxDecoration(
                color: Colors.amber, shape: BoxShape.circle,
              ),
                ),
              Container(
                width:100,
                height:100,
                decoration: const BoxDecoration(
                color: Colors.black, shape: BoxShape.circle,
              ), 
                ),
              Container(
                width:100,
                height:100,
                decoration: const BoxDecoration(
                color: Color.fromARGB(255, 187, 54, 244), shape: BoxShape.circle,
              ), 
                ),
              Container(
                width:100,
                height:100,
                decoration: const BoxDecoration(
                color: Color.fromARGB(255, 7, 15, 255), shape: BoxShape.circle,
              ),
                ),
                  ],
              ),
              ),
    );
  }
}