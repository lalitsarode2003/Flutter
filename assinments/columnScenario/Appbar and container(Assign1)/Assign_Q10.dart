import'package:flutter/material.dart';

void main(){
  runApp(const MainApp());
}

class MainApp extends StatelessWidget{
  const MainApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar: AppBar(
          title: const Text(
            "Edges circular border to a container!",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color:Colors.white,
            )
          ),
          backgroundColor: Colors.black,
        ),
        body: Container(
          width:MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.red,
                  width: 10 ),
                  borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(20),
                    topLeft: Radius.circular(20),  
                  ),
                ),
              ),
             
            ],
          ),
        ),
      )
    );
  }
}