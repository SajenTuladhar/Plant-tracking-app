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
      body: ListView(
        children: [
          Container(
            
            decoration: const BoxDecoration(
                // ignore: prefer_const_literals_to_create_immutables
                boxShadow: [
                  BoxShadow(

                      color: Colors.black, 
                      spreadRadius: 1,
                      blurRadius: 7,
                      blurStyle: BlurStyle.outer,
                      )
                ],
                color:  Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.only(bottomLeft:Radius.circular(20),bottomRight: Radius.circular(20))),
            padding: const EdgeInsets.all(12),
            height: 200,
            child: const Text(
              "Good Morning \n Master Bruce",
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 24, color: Colors.black,
              ),
            ),
          )
        ],
      ),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        title: const Text("Botany"),
        elevation: 0,
        centerTitle: true,
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
        padding: const EdgeInsets.only(bottom: 2),
        height: 70,
        color: const Color.fromARGB(255, 184, 88, 16),
        notchMargin: 15,
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
              padding: const EdgeInsets.only(right:45),
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
    );
  }
}
