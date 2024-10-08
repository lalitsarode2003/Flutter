import 'package:flutter/material.dart';

void main(){
  runApp(const MainApp());
}

class MainApp extends StatelessWidget{
  const MainApp ({super.key});

  @override
  Widget build (BuildContext context){
    return MaterialApp(
      home:Scaffold(
        appBar:AppBar(
          title:const Text(
            "Scroll Demo",
            style: TextStyle(
              fontSize: 30,
              fontWeight:FontWeight.w500,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.network("https://creativereview.imgix.net/content/uploads/2023/12/Oppenheimer.jpg?auto=compress,format&q=60&w=1263&h=2000"),
              Container(
                width: 700,
                height: 200,
                color: Colors.amber,
                ),
                Image.network("https://m.media-amazon.com/images/I/71u4lXw8PBL.jpg"),
                Container(
                  width:600 ,
                  height: 200,
                  color:Colors.amber,
              ),
              Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFb3kA6DHWh-iuzRrxh6Hp32TWJxffFG-2QnfNNatAR--LIU2Gn47Tb7YEfg&s"),
                Container(
                  width:600 ,
                  height: 200,
                  color:Colors.amber,
              ),
              Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ55yTyE9_-IojUnvz4dpjsdJbs-HBkA3B4XAHsDxCBr6auYyTVSe0-Oa_DODQ6pbckmUY&usqp=CAU"),
                Container(
                  width:600 ,
                  height: 200,
                  color:Colors.amber,
              ),
              

            ],
          ),
        ),
      ),
    );
  }
}