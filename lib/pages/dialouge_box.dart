import 'package:flutter/material.dart';

class DialougeBox extends StatelessWidget {
  const DialougeBox({super.key});

  @override
  Widget build(BuildContext context) {
    return const AlertDialog(
      title: Text('Add your plant'),
      content: SizedBox(
        height: 130  ,
        width: 300,
        child:  Column(
         mainAxisAlignment: MainAxisAlignment.spaceEvenly,

      ),
    ));
  }
}