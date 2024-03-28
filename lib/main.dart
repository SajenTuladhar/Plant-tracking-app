
import 'package:botany/pages/front_page.dart';
import 'package:botany/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
     SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Color.fromARGB(255, 255, 255, 255)
  ));
    return const MaterialApp(
      home: FrontPage(),
      debugShowCheckedModeBanner: false,
      

    );

  }
}