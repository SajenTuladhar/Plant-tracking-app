import 'package:flutter/material.dart';

class DialougeBox extends StatelessWidget {
  const DialougeBox({super.key});

  @override
  Widget build(BuildContext context) {
    return   AlertDialog(
      content: Container(
        height: 20  ,
        width: 50,
        child: const Column(
         mainAxisAlignment: MainAxisAlignment.spaceEvenly,

      ),
    ));
  }
}