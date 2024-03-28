import 'package:flutter/material.dart';

class FrontPage extends StatefulWidget {
  const FrontPage({super.key});

  @override
  State<FrontPage> createState() => FrontPageState();
}

class FrontPageState extends State<FrontPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      
      
      backgroundColor:const  Color.fromARGB(255, 69, 189, 73),
      
        
        
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            
              const TextField(
                
                decoration: InputDecoration(
                  border: OutlineInputBorder( borderRadius: BorderRadius.all(Radius.circular(20))),
                  filled: true,
                  fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                        
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                    hintText: "Name",
                    hintStyle:
                        TextStyle(color: Color.fromARGB(255, 188, 177, 177))),
              ),
            MaterialButton(onPressed: () {
              
            },
            
            color: Colors.blue,
            child:const  Text("Done", style: TextStyle(color: Colors.white),),)
            ],
          
          ),
        ),
      
    
    );
  }
}
