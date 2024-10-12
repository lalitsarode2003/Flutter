import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar:AppBar(
          title:const Text( "Netflix",
          style:TextStyle(
            fontSize:30,
            fontWeight: FontWeight.w500,
            color: Colors.red,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
        ),
        body: 
        ListView.builder(
          itemCount: 10,
          physics: BouncingScrollPhysics(),
          itemBuilder: (BuildContext context,int index){
            return  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                "Action Movies",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                )
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 300,
                        width: 200,
                        child:Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8FaPHWnqp3emgS-QNoL4QSFFupbgofB7vGQ&s"),
                        ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 300,
                        width: 200,
                        child:Image.network("https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/cece0021460537.563019ddeae56.jpg"),
                        ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 300,
                        width: 200,
                        child:Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTma3bhwfGgiYjLBdEduHWiGZJ2s6rzltpQ7w&s"
                        ),),
                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 300,
                        width: 200,
                        child:Image.network("https://m.media-amazon.com/images/M/MV5BZGQwNDdhODAtY2Y0Ni00YzFhLTk1OGUtY2RkMDAzNzBmZjAxXkEyXkFqcGc@._V1_.jpg"
                        ),),
                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 300,
                        width: 200,
                        child:Image.network("https://m.media-amazon.com/images/M/MV5BMzcyMjMxOTg4MF5BMl5BanBnXkFtZTcwNzEwMDE5Ng@@._V1_QL75_UX190_CR0,2,190,281_.jpg"
                        ),),
                    ],
                  ),
                )
              ],

            );
          } ),
        ),

    );
  }
}
