import 'package:botany/pages/dialouge_box.dart';
import 'package:botany/pages/setting_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Homepage extends StatelessWidget {
  //get the current time
  final String greetingText;
  final String nameFromHome;
  const Homepage(
      {required this.nameFromHome, required this.greetingText, super.key});

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
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(80),
                      bottomLeft: Radius.circular(20)),
                  color: Color.fromARGB(255, 223, 221, 221)),
              child: Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  ListTile(
                    minVerticalPadding: 2,
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 30),
                    title: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        greetingText,
                        style: const TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontFamily: 'Simple',
                            fontSize: 45,
                            letterSpacing: 2,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.only (top: 10),
                      child: Text(
                      
                        nameFromHome,
                        style: const TextStyle(
                           
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontFamily: 'Simple',
                            fontSize: 45,
                            letterSpacing: 2,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            
          ],
         ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton.large(
          onPressed: () {
            showDialog(
              context: context, 
              builder: (BuildContext context){
                return const DialougeBox();
              }
            );
          },
          backgroundColor: const Color.fromARGB(255, 2, 200, 111),
          elevation: 0,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(67)),
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
