 import 'package:flutter/material.dart';

 void main(){
  runApp(const MyApp());
 }

 class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner:false,
      home: QuizApp(),
    );
  } 
}

class QuizApp extends StatefulWidget{
  const QuizApp({super.key});
  
  @override
  State createState() => _QuizAppState();
}

class _QuizAppState extends State{
  List<Map> allQuestions = [
    {
      "question":"Who is the founder of Microsoft ?",
      "options": ["Steve Jobs","Bill Gates","Lary Page","Elon Musk"],
      "correctAnswer":1
    },
    {
      "question":"Who is the founder of Google ?",
      "options": ["Steve Jobs","Bill Gates","Lary Page","Elon Musk"],
      "correctAnswer":2
    },
    {
      "question":"Who is the founder of Apple ?",
      "options": ["Steve Jobs","Bill Gates","Lary Page","Elon Musk"],
      "correctAnswer":0
    },
    {
      "question":"Who is the founder of SpaceX ?",
      "options": ["Steve Jobs","Bill Gates","Lary Page","Elon Musk"],
      "correctAnswer":3
    },
    {
      "question":"Who is the founder of Meta ?",
      "options": ["Mark Zuckerberg","Bill Gates","Lary Page","Elon Musk"],
      "correctAnswer":0
    },
  ];
  
  int currentQuestionIndex = 0;
  int selectedAnswerIndex = -1;
  bool questionPage = true;
  ///int count = 0;

  WidgetStateProperty<Color?> checkAnswer(int answerIndex){
    if(selectedAnswerIndex != -1){
      if(answerIndex == allQuestions[currentQuestionIndex]["correctAnswer"]){
        return const WidgetStatePropertyAll(Colors.green);
      }else if(selectedAnswerIndex == answerIndex){
        return const WidgetStatePropertyAll(Colors.red);
      }else{
        return const WidgetStatePropertyAll(null);
      }
      
    }else{
      return const WidgetStatePropertyAll(null);
    }
  }

  
  @override
  Widget build(BuildContext context){
    return isQuestionScreen();
  }
    Scaffold isQuestionScreen(){
      if(questionPage == true){
        return Scaffold(
          appBar:AppBar(
            title:const Text(
              "Quiz App",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w900,
                color: Colors.white
              ),
            ),
            centerTitle:true,
            backgroundColor: Colors.blue,
          ),
          body: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              //no.of questions/out of all questions
              Row(
                children: [
                  const SizedBox(
                    width: 130,
                  ),
                  Text(
                    "Question : ${currentQuestionIndex + 1}/${allQuestions.length}",
                    style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                    ),
              ),
            ],
          ),
         const SizedBox(
          height: 50,
        ),

        //Question 
        SizedBox(
          width: 380,
          height: 100,
          child: Text(
            allQuestions[currentQuestionIndex]["question"],
            style: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w600,
              color: Colors.purple,
            ),
          ),
        ),
        const SizedBox(
          height: 50,
        ),

        //Option1
        SizedBox(
          height: 50,
          width: 350,
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: checkAnswer(0),
            ),
            onPressed: (){
              if (selectedAnswerIndex == -1){
                selectedAnswerIndex = 0;

              //   if (selectedAnswerIndex = allQuestions[currentQuestionIndex]["correctAnswer"]){
              //     count++;
              // }
                setState(() {});
              }
            },
            child: Text(
              "A.${allQuestions[currentQuestionIndex]['options'][0]}",
            style:  const TextStyle(
              fontSize:20,
              fontWeight: FontWeight.w500,
              color:Colors.black,
            ),
          ),
        ),
      ),
      const SizedBox(
        height:25,
        ),

        // Option 2
        SizedBox(
          height:50, 
          width: 350,
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: checkAnswer(1),
            ),
            
            onPressed:(){
              if (selectedAnswerIndex == -1){
                selectedAnswerIndex = 1;

              //    if (selectedAnswerIndex = allQuestions[currentQuestionIndex]["correctAnswer"]){
              //     count++;
              // }
                setState((){});
              }
            },
            child: Text("B.${allQuestions[currentQuestionIndex]['options'][1]}",
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Colors.black,
              ),
            ),
          ),
        ),

        const SizedBox(
        height:25,
        ),

        //option 3
        SizedBox(
          height:50, 
          width: 350,
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: checkAnswer(2),
            ),
            
            onPressed:(){
              if (selectedAnswerIndex == -1){
                selectedAnswerIndex = 2;

              //   if (selectedAnswerIndex = allQuestions[currentQuestionIndex]["correctAnswer"]){
              //     count++;
              // }
                setState((){});
              }
            },
            child: Text("C.${allQuestions[currentQuestionIndex]['options'][2]}",
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Colors.black,
              ),
            ),
          ),
        ),
        
        const SizedBox(
        height:25,
        ),
        //option 4
        SizedBox(
          height:50, 
          width: 350,
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: checkAnswer(3),
            ),
            
            onPressed:(){
              if (selectedAnswerIndex == -1){
                selectedAnswerIndex = 3;

              //   if (selectedAnswerIndex = allQuestions[currentQuestionIndex]["correctAnswer"]){
              //     count++;
              // }
                setState((){});
              }
            },
            child: Text("D.${allQuestions[currentQuestionIndex]['options'][3]}",
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Colors.black,
              ),
            ),
          ),
        ),
      ],
      ),
floatingActionButton: FloatingActionButton(
  onPressed: (){
    if (selectedAnswerIndex != -1){
      //check the condition and show the result screen
    if(currentQuestionIndex < allQuestions.length - 1){
      currentQuestionIndex++;
    }else{
      questionPage = false;
    }
    selectedAnswerIndex = -1;
      setState(() {});
    }
  },
  backgroundColor: Colors.blue,
  child: const Icon(
    Icons.forward,
    color: Colors.orange,
  ),
  ),
);
      }else{
        return Scaffold(
          appBar: AppBar(
            title: const Text(
              "Quiz Result",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w900,
                color: Colors.white,
              ),
            ),
            centerTitle: true,
            backgroundColor:Colors.blue,
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSN3xSfzmRKHwzfA1jjm0zfg4DZSlwEd6at5w&s",
                height:300,
                ),
            const SizedBox(height:30),
            const Text(
              "CONGRATULATIONS!",
              style:TextStyle(
                fontSize:30,
                fontWeight:FontWeight.w900,
                color: Colors.orange,
                ),
              ),
              const SizedBox(height:30),
                 Text("Score:"),
              ],
            ),
            ),
        );
      }
    }
}
