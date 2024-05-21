
import 'package:flutter/material.dart';


class DialougeBox extends StatelessWidget {
  const DialougeBox({super.key});

  @override
  Widget build(BuildContext context) {
    return  AlertDialog(
      title: const Text('Add your plant'),
      content: SizedBox(
        height: 130  ,
        width: 300,
        child:  Column(
         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const TextField(
              decoration:  InputDecoration(
                hintText: 'plant name',
                border: OutlineInputBorder(),
              ),
            ),
             const SizedBox(height: 10),
             
             Align(
              alignment: Alignment.centerRight,
               child: ElevatedButton(onPressed: (){
                Navigator.of(context).pop();
               },
               child : const Text('Submit') ,
               
               ),
             )

          ]
      ),
    ));
  }
}