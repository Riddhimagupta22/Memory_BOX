import 'package:flutter/material.dart';
import './home.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "First UI",
      debugShowCheckedModeBanner: false,
      color: Colors.red,
      home: Scaffold(
        body: Text('hello world'),
      ),
    );
  }
}

