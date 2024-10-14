import "package:flutter/material.dart";

void main(){
  runApp (const MainApp());
}
class MainApp extends StatefulWidget{
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState(); 
}

class _MainAppState extends State<MainApp>{

  TextEditingController nameController = TextEditingController();

  String? name;

  List<String> playersList = [];

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title:const Text(
            "Player's List",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w800,
              color: Colors.black,
            ),
            ),
            centerTitle: true,
            backgroundColor: Colors.amber.shade600,
        ),
        body:  SingleChildScrollView(
          child: Column(
            children: [//did not added a sized box here 
              Padding(
                padding: const EdgeInsets.all(20),
                child: TextField(
                  controller: nameController,
                  style: const TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                  ),
                  decoration: const InputDecoration(
                    hintText: "Enter Name",
                    hintStyle: TextStyle(
                      fontSize: 30,
                      color: Colors.grey,
                    ),
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (value) {
                    
                  },
                  onEditingComplete: () {
                    
                  },
                  onSubmitted: (value) {
                    
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap:(){
                name = nameController.text.trim();
                if (name !=""){
                  playersList.add(name!);
                  nameController.clear();
                  setState(() {});
                }
                },
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 15,
                ),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 0, 0),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Text(
                  "Add Data",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
              ),
              ),
            const SizedBox(
              height: 40,
            ),
            ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: playersList.length,
              shrinkWrap: true,
              itemBuilder: (context , index){
                return Text(
                  "Name: ${playersList[index]}",
                  style: const TextStyle(
                      fontSize: 30,
                  ),
                  );
              },
             ),
            ],
          ),
        ),
      ),
    );
  }
}