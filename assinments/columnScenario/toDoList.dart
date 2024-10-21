import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: toDoList(),
    );
  }
    
     }
class toDoList extends StatefulWidget{
   const toDoList({super.key});

  @override
  State   createState() => _toDoListState();
}

//LIST OF COLORS THAT WILL BE REPEATED AFTER EVERY 4 CARDS
List<Color> ListColors = [
  const Color.fromRGBO(250, 232, 232, 1),
  const Color.fromRGBO(232, 237, 250, 1),
  const Color.fromRGBO(250, 249, 232, 1),
  const Color.fromRGBO(250, 232, 250, 1),
];


class TodoModel extends _toDoListState{
  String title;
  String description;
  String date;
  TodoModel(
    {
    required this.title,
    required this.description,
    required this.date,
    
  }
  );
}

class _toDoListState extends State {

//LIST OF ALL CARDS ADDED THROUGH FLOATINGACTIONBUTTON NAMED AS 'todoTasks'
List<TodoModel> todoTasks = [
  TodoModel(
    title:"Flutter",
    description:"Dart,OOP,FUTURE",
    date:"18-0ct,2024",
  ),
  TodoModel(
    title:"Python",
    description:"PICKELING,DECORATOR,GENERATOR",
    date:"19-0ct,2024",
  ),
  TodoModel(
    title:"Java",
    description:"SCP,ABSTRACTION",
    date:"20-0ct,2024",
  ),
];


//SUBMIT BUTTON(2-parameters; one boolean other one optional)
void submit(bool doEdit,[TodoModel? todoObj]){

  if (titleController.text.trim().isNotEmpty && 
  descriptionController.text.trim().isNotEmpty &&
  dateController.text.trim().isNotEmpty) {
    if (doEdit == true) {
      //EDIT
      todoObj!.title = titleController.text;
      todoObj!.description = descriptionController.text;
      todoObj!.date = dateController.text;
    }else{
      //ADD NEW
      todoTasks.add(
        TodoModel(
          title: titleController.text,
          description: descriptionController.text,
          date: dateController.text,
        ),
      );
    } 
  }
  Navigator.of(context).pop();
  clearControllers();
  setState(() {});
}

// WILL CLEAR ALL THE CONTROLLERS DATA TO BE DESPLAYED EMPTY WHEN CALLED FOR NEW CARD(TASK)CREATION
void clearControllers(){
  titleController.clear();
  descriptionController.clear();
  dateController.clear();
}

//EDITING CONTROLLERS - FOR STORING THE TEXT IN ALL THE 3 FIELDS 
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController dateController = TextEditingController();

// PASSED 2 PARAMETERS SINCE IT WILL STATE WHETHER THE LIST TO BE EDITED OR NEWLY FORMED RESPECTIVELY 
  void showBottomSheet(bool doEdit,[TodoModel? todoObj]){

   showModalBottomSheet(
    // isScrollControlled :true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(topLeft:Radius.circular(30) ,topRight:Radius.circular(30),
      ),
    ),
    isDismissible: true,
    context: context,
    builder: (context) {
      return Padding(
        padding: EdgeInsets.only(left: 20,right:20,
        bottom: MediaQuery.of(context).viewInsets.bottom),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(
              height: 10,
            ),
            Text("Create Task",
            style: GoogleFonts.quicksand(
              fontWeight: FontWeight.w600,
              fontSize: 22, 
              color: Colors.black),
            ),
            const SizedBox(
              height: 12,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                //TITLE TEXT AS WELL AS TEXTFIELD
                Text("Title",
                style:GoogleFonts.quicksand(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: const Color.fromRGBO(0,139,148,1),
                ),),
                const SizedBox(
                  height:10,
                ),
                TextField(
                  controller: titleController,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(
                        color:Color.fromRGBO(0, 139, 148, 1)
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.purple),
                      borderRadius: BorderRadius.circular(12)
                    )
                  ),
                ),
                const SizedBox(
                  height:12,
                ),
                //DESCRIPTION TEXT AS WELL AS TEXTFIELD
                Text("Description",
                style:GoogleFonts.quicksand(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: const Color.fromRGBO(0,139,148,1),
                ),),
                const SizedBox(
                  height:10,
                ),
                TextField(
                  controller: descriptionController,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(
                        color:Color.fromRGBO(0, 139, 148, 1)
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.purple),
                      borderRadius: BorderRadius.circular(12)
                    )
                  ),
                ),
                const SizedBox(
                  height:12,
                ),
                //DATE TEXT AS WELL AS TEXTFIELD
                Text("Date",
                style:GoogleFonts.quicksand(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: const Color.fromRGBO(0,139,148,1),
                ),),
                const SizedBox(
                  height:3,
                ),
                TextField(
                  controller: dateController,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(
                        color:Color.fromRGBO(0, 139, 148, 1)
                      ),
                    ),
                    suffixIcon: const Icon(Icons.calendar_month_outlined),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.purple),
                      borderRadius: BorderRadius.circular(12),
                    )
                  ),
                  onTap: () async {
                    DateTime? pickedDate = await showDatePicker(
                      context: context,
                      firstDate: DateTime(2024),
                      lastDate:DateTime(2025),
                      );
                    //String formattedDate = DateFormat.yMMMd().format(pickedDate!);

                    setState(() {});
                   //dateController.text = formattedDate;
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                //SUBMIT BUTTON 
                Center(
                  child: ElevatedButton(
                    
                    //IF CONTROLES THE EDIT OPERATION,ELSE CONTROLES THE NEW CARD FORMATION
                    onPressed: () {
                     if (doEdit == true) {
                      submit(true, todoObj);
                     }else{
                      submit(false);
                     }
                    },
                    style: const ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll( Color.fromRGBO(0, 139, 148, 1),)
                    ),
                    child:Text(
                      "Submit",
                      style: GoogleFonts.inter(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                    ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
        
      );
    },

  );
}
  
  @override
  Widget build(BuildContext context){ 
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     
        home: Scaffold(
        appBar: AppBar(
          title: const Text(
           "To-do list",
          style: TextStyle(
            fontSize:26,
            fontWeight: FontWeight.w700,
            color: Colors.white),
            ),
            backgroundColor: const Color.fromRGBO(1, 167, 177, 1),
            ),
        body:  ListView.builder(
          itemCount: todoTasks.length,//WILL KEEP THE COUNT INCREASING WITH INCREASING CARDS WE WILL BE CREATING WHICH WE DEFINED IN LIST AS todoTasks
          itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  height:160, 
                  width: 500,     
                  decoration: BoxDecoration(
                    color:ListColors[index % todoTasks.length],//FROM THE ListColors LIST INITIALIZED ALREADY THE INDEX WILL BE % WITH THE LENGTH THAT IS ALREADY EXISTING IN THE todoTasks LIST
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          //IMAGE
                          Padding(
                            padding: const EdgeInsets.only(top: 30, left: 10  ),
                            child: Container(
                              height: 80,
                              width: 80,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                              child: Image.asset("assets/png/Group42.png"),
                            ),
                          ),
                          const SizedBox(
                            width: 30,
                            
                          ),
                           Expanded(
                             child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                //TITLE
                                Text(todoTasks[index].title,
                                style: GoogleFonts.quicksand(fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Colors.black) ,),
                                const SizedBox(
                                  height: 10,
                                ),

                                //DESCRIPTION
                                Text( todoTasks[index].description,
                                style: GoogleFonts.quicksand(fontSize: 10,
                                fontWeight: FontWeight.w500,
                                color: Colors.black) ,
                                ),
                               ],
                              ),
                           )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          children: [
                            Text(todoTasks[index].date,
                            style: GoogleFonts.quicksand(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromRGBO(132, 132, 132, 1),
                            ),
                            ),
                            const Spacer(),
                           //EDIT ICON FUNCTIONALITY
                           GestureDetector(
                            onTap: (){
                              titleController.text = todoTasks[index].title;
                              descriptionController.text = todoTasks[index].description;
                              dateController.text = todoTasks[index].date;
                              showBottomSheet(
                                true,
                                todoTasks[index],
                              );
                              setState(() {});
                            },
                           ),
                            const Icon(Icons.edit,
                            color: Color.fromRGBO(0, 129, 148,1),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                        
                            const Icon(Icons.delete_outline,
                            color: Color.fromRGBO(0, 129, 148,1),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
          },
        ),
        floatingActionButton:FloatingActionButton(
          backgroundColor: const Color.fromRGBO(0, 139, 148, 1),
         
          onPressed: (){
            showBottomSheet(false);

          },
          shape:const CircleBorder(),
          child:const  Icon(Icons.add,
          size: 50,
          color: Colors.white,),
          )  ,
        
      ),
    );
  }
}
     