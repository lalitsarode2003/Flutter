import 'package:flutter/material.dart';

void main(){
  runApp(const MainApp());
}

class MainApp extends StatelessWidget{
  const MainApp({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      appBar:AppBar(
        
        centerTitle: true,
        title: const Text(
          "Images",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w500,
            color: Colors.amber,
          ),
        ),
      ),
      body:SingleChildScrollView(
        
        child: Container(
          width:MediaQuery.of(context).size.width,
          child: Column(
            
              mainAxisAlignment:MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [   
                Image.network("https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_640.jpg",
                width: 150,
                height: 150,),
                // Image.network("https://letsenhance.io/static/8f5e523ee6b2479e26ecc91b9c25261e/1015f/MainAfter.jpg",
                // width: 150,
                // height: 150,),
                Image.network("https://images.pexels.com/photos/1133957/pexels-photo-1133957.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                width: 150,
                height: 150,),
                Image.network("https://d38b044pevnwc9.cloudfront.net/cutout-nuxt/enhancer/2.jpg",
                width: 150,
                height: 150,)
              ],
          ),
        ),
      ),
        ),
      );
  }
}
