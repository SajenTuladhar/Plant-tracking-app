import 'package:botany/pages/dialouge_box.dart';
import 'package:botany/setting_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
        padding: EdgeInsets.zero,
        children: [
          Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(80),
                    bottomLeft: Radius.circular(20)),
                color: Color.fromARGB(255, 2, 200, 111)),
            child: const Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                ListTile(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                  title: Text(
                    "Good Morning !",
                    style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    "User",
                    style: TextStyle(
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
          Container(
            decoration: const BoxDecoration(
              
                color: Color.fromARGB(129, 71, 172, 66),
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20))),
            height: 220,
            padding: const EdgeInsets.all(70),
            child: const Text("Your Plants need water",style: TextStyle(fontSize: 30),),
          ),
          Container(
            decoration: const BoxDecoration(
              color:Color.fromARGB(255, 145, 128, 128)
            ),
            height: 700,
           child: GridView.count(crossAxisCount: 2),
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
    );
  }
}
