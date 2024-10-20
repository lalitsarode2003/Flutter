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
          title: const Text(
            "Find your train!",
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.w800,
              color: Colors.amber,
            ),
          ),
          backgroundColor: Colors.black,
          
          actions: [
            IconButton(
              onPressed:(){} ,
               icon: const Icon(Icons.notifications,
               color: Colors.blue,),
               ),
            const SizedBox(
                width: 5,
              ),
            IconButton(
              onPressed:(){} ,
               icon: const Icon(Icons.search_outlined))
              
          ],
          

        ),
      )
    );
  }

  

}

