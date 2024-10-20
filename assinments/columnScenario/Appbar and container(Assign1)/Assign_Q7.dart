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
        
        appBar: AppBar(
          title:const Text(
            "Horizontal Scroll",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w700,
              color:Colors.red,
            ),
          ),
          backgroundColor:Colors.black,
        ),
        body:  SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Image.network("https://img.freepik.com/premium-photo/modern-automobile-classic-technology-wheel-traffic_665346-119.jpg",
              width: 150,
              height: 300,),
              Image.network("https://img.freepik.com/premium-photo/sports-muscle-car-walpapers_862994-454224.jpg",
              width: 150,
              height: 300,),
              Image.network("https://img.freepik.com/premium-photo/car-with-lights-back-it_987366-66404.jpg",
              width: 150,
              height: 300,),
              Image.network("https://img.freepik.com/premium-photo/high-resolution-vertical-image-sleek-modern-car_1273914-33789.jpg",
              width: 150,
              height: 300,),
              Image.network("https://img.freepik.com/free-photo/view-car-running-high-speed_23-2150635406.jpg",
              width: 150,
              height: 300,),
            ],
          ),
        ),
      ),
    );
  }
}