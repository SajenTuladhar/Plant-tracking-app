import 'package:flutter/material.dart';

class DialougeBox extends StatelessWidget {
  const DialougeBox({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        title: const Text('Add your plant'),
        titleTextStyle: const TextStyle(
            fontFamily: 'Simple',
            fontSize: 40,
            color: Colors.black,
            fontWeight: FontWeight.bold,
            letterSpacing: 1),
        content: SizedBox(
          height: 130,
          width: 300,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const TextField(
                  decoration: InputDecoration(
                    hintText: 'Plant Name',
                    hintStyle: TextStyle(
                        fontFamily: 'Simple',
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        letterSpacing: 2),
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 10),
                Align(
                  alignment: Alignment.centerRight,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text(
                      'Submit',
                      style: TextStyle(
                          fontFamily: 'simple',
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          letterSpacing: 3,
                          fontSize: 15),
                    ),
                  ),
                )
              ]),
        ));
  }
}
