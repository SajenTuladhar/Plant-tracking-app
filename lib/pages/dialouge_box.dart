import 'package:flutter/material.dart';

class DialougeBox extends StatelessWidget {
  const DialougeBox({super.key});

  @override
  Widget build(BuildContext context) {
    return const   AlertDialog(
      
      content: SizedBox(
        height: 20  ,
        width: 50,
        child:  Column(
         mainAxisAlignment: MainAxisAlignment.spaceEvenly,

      ),
    ));
  }
}