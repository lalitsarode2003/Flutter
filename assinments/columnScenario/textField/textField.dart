import"package:flutter/material.dart";

void main(){
  runApp (const MainApp());
}


class MainApp extends StatefulWidget{
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State <MainApp>{
  TextEditingController nameController = TextEditingController();
  TextEditingController passController = TextEditingController();

  String? name;
  String? pass;

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Textfield Demo",
            style: TextStyle(
              fontSize:30,
              fontWeight:FontWeight.w600,
              color: Colors.amber,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body:Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextField(
                controller: nameController,
                style: const TextStyle(
                  fontSize: 30,
                ),
                obscureText: false,
                decoration: const InputDecoration(
                  suffixIcon: Icon(Icons.visibility),
                  hintText: "Enter Name",
                  hintStyle: TextStyle(
                    fontSize: 25,
                    color: Colors.grey,
                  ),
                  border: OutlineInputBorder(),
                ),
                onChanged: (String value) {
                  
                },
                onEditingComplete: () {
                  
                },
                onSubmitted: (value) {
                  
                },
              ), 
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: TextField(
                controller: passController,
                style:const TextStyle(
                  fontSize: 30,
                ),
                obscureText: true,
                decoration: const InputDecoration(
                  suffixIcon: Icon(Icons.visibility),
                  hintText: "Enter Password",
                  hintStyle: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey,
                  ),
                  border: OutlineInputBorder(),
                ),
                onChanged: (value) {
                  
                },
                onEditingComplete: () {
                  
                },
                onSubmitted: (Value) {
                  
                },
              ),
               ),
            const SizedBox(
              height:20,
            ),
            GestureDetector(
              onTap:() {
                name = nameController.text;
                nameController.clear;
                pass = passController.text;
                passController.clear;
                setState(() {});
              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 5,
                ),
                decoration: BoxDecoration(
                  color:Colors.blue,
                  borderRadius: BorderRadius.circular(15),
                ),
                child:const Text(
                  "Add Data",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                )
              ),
            ),
            const SizedBox(
              height:20,
            ),
            Text(
              "Name: $name",
              style: const TextStyle(
                fontSize: 20,
              ),
              ),
            Text(
              "PassWord: $pass",

              style: const TextStyle(
                fontSize: 20,
              ),
            )

          ],
        ),

      ),
    );
  }
}