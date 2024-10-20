import 'package:flutter/material.dart';

void main(){
  runApp(const MainApp());
}
class MainApp extends StatelessWidget{
  const MainApp({super.key});

  @override
  Widget build (BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar: AppBar(
          title: const Text(
            "10 scrolable containers",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w400,
              color: Colors.limeAccent,
            ),
          ),
          backgroundColor: Colors.black,
        ),
        body:SingleChildScrollView(
          
          child: Container(
            width:MediaQuery.of(context).size.width,

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  color: Colors.black,
                  height: 200,
                  width: 200,
                ),
                Container(
                  color: Colors.white,
                  height: 200,
                  width: 200,
                ),
                Container(
                  color: Colors.blue,
                  height: 200,
                  width: 200,
                ),
                Container(
                  color: Colors.amber,
                  height: 200,
                  width: 200,
                ),
                Container(
                  color: Colors.red,
                  height: 200,
                  width: 200,
                ),
                Container(
                  color: Colors.purple,
                  height: 200,
                  width: 200,
                ),
                Container(
                  color: Colors.pink,
                  height: 200,
                  width: 200,
                ),
                Container(
                  color: Colors.brown,
                  height: 200,
                  width: 200,
                ),
                Container(
                  color: Colors.green,
                  height: 200,
                  width: 200,
                ),
                Container(
                  color: Colors.orange,
                  height: 200,
                  width: 200,
                ),
              ],
            ),
          ),
        )

        ),
        

      );
  }

}