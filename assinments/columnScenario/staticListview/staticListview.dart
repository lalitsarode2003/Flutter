import "package:assignments/ColumnMainAxisAllignment.dart";
import "package:flutter/material.dart";

void main(){
  runApp(const MainApp());
}

class MainApp extends StatelessWidget{
  const MainApp({super.key});

  @override
  Widget build(BuildContext content ){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("ListView Demo",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w500),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
          ),
          body: ListView(
            children: [
              Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTftZEvXN7zC1HOE3LclQCAx28T1vB83bHaNg&s"),
              
              Row(
                 mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.favorite,
                  color: Colors.red,
                  ),
                ],
              ),
              const Text(
                "Bhari",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVN4Di5vtpdP6jobslYU9sge7IqTIAMd0D7A&s"),
              Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTRn7Bo2Vx883TqLfjjbTH5aQGcq8lu9M-U7g&s"),
              Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjMlxUkYZCUJ195O4EcvIGibiH3nnSzeMjEA&s"),  
              GestureDetector(
                onTap: (){},
                child:Container(
                  height:50,
                  color:Colors.amber,
                  child:const Text(
                    "Press Me!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ) ,);
  }
}