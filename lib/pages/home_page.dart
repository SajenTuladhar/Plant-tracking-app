import 'package:botany/pages/dialouge_box.dart';
import 'package:botany/pages/setting_page.dart';
import 'package:flutter/material.dart';


class Homepage extends StatelessWidget {
  //get the current time
  final String greetingText;
  final String nameFromHome;
  const  Homepage(this.nameFromHome,this.greetingText, {super.key});

  

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        
        body: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              
              
              decoration: const BoxDecoration(
                
                
                  borderRadius:  BorderRadius.only(
                      bottomRight: Radius.circular(80),
                      bottomLeft: Radius.circular(20)),
                  color: Color.fromARGB(255, 2, 158, 98)),
              child:  Column(
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  ListTile(
                    minVerticalPadding: 3,
                    contentPadding: const
                        EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                    title: const Text(
                      "Good Morning !",
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(nameFromHome,
                      style: const TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            //Message container
            UnconstrainedBox(
              child: Container(
                height: 200,
                width: 385,
                decoration: const BoxDecoration(
                  // image: DecorationImage(image: AssetImage('assets/images/plants.jpg'),
                  // fit: BoxFit.cover),
                    color: Color.fromARGB(255, 233, 237, 233),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
                padding: const EdgeInsets.all(60),
                child: const Text(
                  "Your Plants need water !",
                  style: TextStyle(fontSize: 30),
                  textAlign: TextAlign.start,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
      
            //your plants container
            
      
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              
              children :[ Container(
                
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20)),
                    color: Color.fromARGB(255, 202, 201, 201)),
                height: 600,
                width: 385,
                padding: const EdgeInsets.all(30),
                
                
                child: Column(children: [
                const Text("Your plants", 
                style: TextStyle(fontSize: 25),textAlign: TextAlign.start),
                   Expanded(
                    child: GridView.builder( itemCount: 2,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), 
                    itemBuilder: (context, index ){
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 50  ,
                          width: 50,
                          color: Colors.blue,
                        ),
                      );
                    })
                 
              ,)
      
                ],) 
                
              ),
              ]
              
            )
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton.large(
          onPressed: () {
            DialougeBox;
          },
          backgroundColor: const Color.fromARGB(255, 2, 200, 111),
          elevation: 0,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(67)),
          child: const Icon(
            Icons.add,
            size: 45,
            color: Colors.white,
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          padding: const EdgeInsets.only(bottom: 2),
          height: 70,
          color: const Color.fromARGB(255, 224, 115, 32),
          notchMargin: 10,
          shape: const CircularNotchedRectangle(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 45),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.home_filled),
                      onPressed: () {},
                      iconSize: 35,
                      color: Colors.white,
                      focusColor: Colors.white,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 45),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.settings_rounded),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SettingsPage()),
                        );
                      },
                      iconSize: 35,
                      color: Colors.white,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
