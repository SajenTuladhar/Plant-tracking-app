import 'package:botany/pages/dialouge_box.dart';
import 'package:botany/setting_page.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        title: const Text("Botany"),
        elevation: 2,
        centerTitle: true,
        shadowColor: Colors.black,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton.large(
        onPressed: () {
          DialougeBox;
        },
        backgroundColor: const Color.fromARGB(255, 12, 172, 9),
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(67)),
        child: const Icon(
          Icons.add,
          size: 45,
          color: Colors.white,
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: const Color.fromARGB(255, 184, 88, 16),
        notchMargin: 20,
        shape: const CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: const Icon(Icons.home_filled),
                    onPressed: () {},
                    iconSize: 40,
                    color: Colors.white,
                    focusColor: Colors.white,
                  ),
                  // Text(
                  //   "Home",
                  //   style: TextStyle(color: Colors.white,
                  //   fontSize: 15,
                  //   fontWeight:FontWeight.bold,
                  //   letterSpacing: 0),
                  // )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: const Icon(Icons.settings_rounded),
                    onPressed: () {
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SettingsPage()),
                      );
                    },
                    iconSize: 40,
                    color: Colors.white,
                  ),
                  // Text(
                  //   "Settings",
                  //   style: TextStyle(color: Colors.white,
                  //   fontSize: 15,
                  //   fontWeight:FontWeight.bold,
                  //   letterSpacing: 2.5),
                  // )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
