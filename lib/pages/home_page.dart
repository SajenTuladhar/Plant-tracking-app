
import 'package:botany/pages/dialouge_box.dart';
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
        onPressed: (){
          DialougeBox;
        },
        backgroundColor:const Color.fromARGB(255, 12, 172, 9),
        elevation: 0,
        shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(67)),
        child: const Icon(Icons.energy_savings_leaf_rounded, size: 45,color: Colors.white,),),

        bottomNavigationBar:const BottomAppBar(
          color:Color.fromARGB(255, 195, 89, 27),
          notchMargin: 25,
          shape: CircularNotchedRectangle(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 22),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      size: 35,
                      Icons.home,
                      color:Colors.white,
                      
                    ),
                    Text(
                      "Home",
                      style: TextStyle(color: Colors.white,
                      fontSize: 15,
                      fontWeight:FontWeight.bold,
                      letterSpacing: 2.5),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 18),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      size: 35,
                      Icons.settings,
                      color:Colors.white,
                      
                    ),
                    Text(
                      "Settings",
                      style: TextStyle(color: Colors.white,
                      fontSize: 15,
                      fontWeight:FontWeight.bold,
                      letterSpacing: 2.5),
                    )
                  ],
                ),
              )
            ],
          ),
          
        ),
      );
  }
}