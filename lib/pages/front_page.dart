import 'package:botany/pages/home_page.dart';
import 'package:flutter/material.dart';

class FrontPage extends StatefulWidget {
  const FrontPage({Key? key}) : super(key: key);

  @override
  State<FrontPage> createState() => FrontPageState();
}

class FrontPageState extends State<FrontPage> {
  //use this controller to get what the user types
  final _textController= TextEditingController();

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
              child:  TextField(
                controller: _textController,

                textAlign: TextAlign.left,
                decoration:  InputDecoration(
                  suffix: IconButton(onPressed: () {
                    _textController.clear();
                  }, icon: const Icon(Icons.clear,color: Colors.black,)),
                  border: const OutlineInputBorder(
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
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Homepage()),
                  
                );
              },
              // height: 40,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12), // <-- Radius
                ),
              ),
              // textColor: Colors.white,
              // color: const Color.fromARGB(255, 95, 186, 43),

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
