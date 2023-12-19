import 'package:flutter/material.dart';
import 'package:todo_app/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of the application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(
        // primarySwatch: Colors.blue,
        fontFamily: 'Poppins'
       ),
       
    );
  }
}
