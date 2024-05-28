import 'package:flutter/material.dart';

class DialougeBox extends StatefulWidget {
  const DialougeBox({super.key});

  @override
  State<DialougeBox> createState() => _DialougeBoxState();
}

class _DialougeBoxState extends State<DialougeBox> {
  final myController = TextEditingController();

  @override
  dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }

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
                TextField(
                  controller: myController,
                  decoration: const InputDecoration(
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
                    onPressed: () {},
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
