import 'package:botany/pages/dialouge_box.dart';
import 'package:botany/pages/setting_page.dart';
import 'package:botany/util/plants_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Homepage extends StatefulWidget {
  final String greetingText;
  final String nameFromHome;

  const Homepage({
    required this.nameFromHome,
    required this.greetingText,
    super.key,
  });

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        body: Column(children: [
          Container(
            width: double.infinity,
            height: 220,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(34),
                  bottomLeft: Radius.circular(34)),
              color: Color.fromARGB(255, 255, 251, 251),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 70),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Text(
                    widget.greetingText,
                    style: const TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontFamily: 'Simple',
                      fontSize: 45,
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  widget.nameFromHome,
                  style: const TextStyle(
                    height: 0.5,
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontFamily: 'Simple',
                    fontSize: 45,
                    letterSpacing: 2,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Container(
            
            height: 100,
            width: double.infinity,
            color: const Color.fromARGB(255, 254, 253, 252),
            child: const Padding(
              padding: EdgeInsets.all(15),
              child: Text(
                'Your plants',
                style: TextStyle(
                   shadows: [
                Shadow(
                    color: Colors.black,
                    offset: Offset(0, -5))
              ],
                color: Colors.transparent,
                  decoration: TextDecoration.underline,
                  decorationThickness: 3,
                  decorationStyle: TextDecorationStyle.dotted,
                    fontFamily: 'simple',
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    
                    ),
              ),
            ),
          ),

          Expanded(
            child: ListView(
              children: const [PlantsTile()],
            ),
          ),
          // Add other widgets or containers here if needed
        ]),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton.large(
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return const DialougeBox();
              },
            );
          },
          backgroundColor: const Color.fromARGB(255, 22, 208, 130),
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(67),
          ),
          child: const Icon(
            Icons.add,
            size: 45,
            color: Colors.white,
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          padding: const EdgeInsets.only(bottom: 2),
          height: 70,
          color: const Color.fromARGB(255, 29, 27, 25),
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
                            builder: (context) => const SettingsPage(),
                          ),
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
