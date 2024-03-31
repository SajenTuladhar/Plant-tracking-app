import 'package:flutter/material.dart';

class FrontPage extends StatefulWidget {
  const FrontPage({Key? key}) : super(key: key);

  @override
  State<FrontPage> createState() => FrontPageState();
}

class FrontPageState extends State<FrontPage> {
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
              offset: const Offset(0, 60),
              child: const  TextField(
                textAlign: TextAlign.left,
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(30))),
                  hintText: "Name",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}