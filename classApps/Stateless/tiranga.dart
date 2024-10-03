import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      title:"Indian Flag",
      home: MyScreen(),
    );
  }
}
class MyScreen extends StatelessWidget{
    const MyScreen({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        title:const Text("Indian Flag"),
        centerTitle:true,
        backgroundColor:const Color.fromARGB(255, 8, 148, 134)
      ),
    body:Center(
      child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width:10,
                height:455,
                color:const Color.fromARGB(255, 46, 38, 35),
              ),
              SizedBox(
                width:150,
                height:455,
                child:Column(
                  children:[
                    Container(
                    width:150,
                    height:45,
                    color:Colors.orange,
                    ),
                    Container(
                      width:150,
                      height:45,
                      color:Colors.white,
                      child:Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/1/17/Ashoka_Chakra.svg/1200px-Ashoka_Chakra.svg.png"),
                    ),
                    Container(
                      width:150,
                      height:45,
                      color:Colors.green,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children:[
              const SizedBox(
                width:110,
              ),
              Container(
                width:150,
                height:45,
                color:const Color.fromARGB(255, 69, 28, 13),
              ),
            ]
          ),
          Row(
            children:[
              const SizedBox(
                width:88,
              ),
              Container(
                width:200,
                height:45,
                color:const Color.fromARGB(255, 107, 45, 23),
              ),
            ],
          ),
          Row(
            children:[
              const SizedBox(
                width:66,
              ),
              Container(
                width:250,
                height:45,
                color:const Color.fromARGB(255, 74, 28, 11),
              ),
            ],
          ),
        ]
      )
    )
    );
  }
  }