import 'package:flutter/material.dart';

void main(){
  runApp(const India11());
}
class India11 extends StatefulWidget{
  const India11({super.key});
  @override
  State<India11>createState()=>_India11State();
}
  class _India11State extends State<India11>{
    int _counter = 0;

    List<String> playerlist =<String>[
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTz-s_F3Ng6D31uG53SFHLegphzGdGAOqfQyg&s",
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4rEnNYJ-kYLaWxODr3rqluxyG0iOt_kk9iA&s",
                "https://e00-marca.uecdn.es/assets/multimedia/imagenes/2023/02/13/16763041506363.jpg",
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQoo4LOy2ciyqnIk-p5P0cyQOwQgNCgWNhRVQ&s",
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR4_y0FgHlAzvsBIiVGkKQcYVSqTLjkDjWdWQ&s",
    ];
    @override
    Widget build(BuildContext context){
      return MaterialApp(
        title: "Players",
        debugShowCheckedModeBanner: false,
        home:Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.limeAccent,
          title:const Text("Player App"),
          centerTitle: true,
            titleTextStyle: const TextStyle(
              color: Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
            body:Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: 
                  <Widget>[
                    Image.network( playerlist[_counter],
                    height: 300,
                    ),
                  ],
              ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed:(){
              if(_counter<playerlist.length-1){
                _counter++;
              }else{
                _counter=0;
              }
              setState(() {});
    },
    tooltip: 'Increment',
    child: const Icon(Icons.forward),
        ),
        ),
      );
    }
  }