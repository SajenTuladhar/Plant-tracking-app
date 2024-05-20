import 'package:botany/pages/home_page.dart';
import 'package:flutter/material.dart';

class FrontPage extends StatefulWidget {
  const FrontPage({super.key});

  @override
  State<FrontPage> createState() => FrontPageState();
}

class FrontPageState extends State<FrontPage> {
  //use this controller to get what the user types
  final nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(38),
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/front_page-01.jpg'),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Move the TextField down by 50 pixels
            Transform.translate(
              offset: const Offset(0, 155),
              child: TextField(
                controller: nameController,
                textAlign: TextAlign.start,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  hintText: "Name",
                ),
              ),
            ),
            const SizedBox(
              height: 180,
            ),

            ElevatedButton(
              onPressed: () {
                String name = nameController.text.toString();
                String greeting = _getGreeting();

                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Homepage(
                            nameFromHome: name,
                            greetingText : greeting ,
                          )),
                );
              },
              // height: 40,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12), // <-- Radius
                ),
              ),
              child: const Text(
                "Submit",
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}

String _getGreeting(){
  DateTime currentTime = DateTime.now();
  if (currentTime.hour >= 6 && currentTime.hour<12){
      return 'Good morning';  
    }else if(currentTime.hour >12 && currentTime.hour <18){
      return 'Good afternoon';
    }else{
      return 'Good evening';
    }
  }  
