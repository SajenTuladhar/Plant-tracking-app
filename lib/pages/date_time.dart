import 'package:flutter/material.dart';
import 'package:botany/pages/home_page.dart';

class Greeting extends StatelessWidget {
  const Greeting({super.key});

  @override
  Widget build(BuildContext context) {
    //get current time
    DateTime currentTime = DateTime.now();
    // define gretting for diffrent times of the day
    String greeting ='';
    if (currentTime.hour >= 6 && currentTime.hour<12){
      greeting = 'Good morning';  
    }else if(currentTime.hour >12 && currentTime.hour <18){
      greeting = 'Good afternoon';
    }else{
      greeting = 'Good evening';
    }

    //navigate to the second page and pass the gretting text as parameter
    WidgetsBinding.instance?.addPostFrameCallback((_) { 
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=>Homepage(greeting))
      );
    });
    return const Placeholder();
  }
}