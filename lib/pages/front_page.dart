import 'package:flutter/material.dart';

class FrontPage extends StatefulWidget {
  const FrontPage({super.key});

  @override
  State<FrontPage> createState() => FrontPageState();
}

class FrontPageState extends State<FrontPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 69, 189, 73),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                      
                  borderRadius: BorderRadius.all(Radius.circular(20))),
                  hintText: "Name",
                  hintStyle:
                      TextStyle(color: Color.fromARGB(255, 188, 177, 177))),
            )
          ],
        ),
      ),
    );
  }
}
