import 'package:flutter/material.dart';
import 'package:botany/pages/home_page.dart';

class Greeting extends StatelessWidget {
  const Greeting({super.key});

  @override
  Widget build(BuildContext context) {
    //get current time
    DateTime currentTime = DateTime.now();
    // define gretting for diffrent times of the day
    String greeting = _getGreeting(currentTime);
    //navigate to the second page and pass the gretting text as parameter
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Homepage(
                    nameFromHome: '',
                    greetingText: greeting,
                  )));
    });
    //return a empty container
    return Container();
  }
}

String _getGreeting(DateTime currentTime){
     if (currentTime.hour >= 6 && currentTime.hour<12){
      return 'Good Morning';  
    }else if(currentTime.hour >12 && currentTime.hour <18){
      return 'Good Afternoon';
    }else{
      return  'Good Evening';
    }
}