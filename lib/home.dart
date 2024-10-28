import 'package:flutter/material.dart';
import 'Widgets/Content.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: ''),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var height, width;

  @override
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xffbf96f7), Color(0xffa987f4)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter)),

            child: Stack(
              children: [
                Positioned(
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color(0xffc8b9f7),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40),
                              topRight: Radius.circular(40),
                            )),
                        height: MediaQuery.of(context).size.height * 0.51,
                        width: double.infinity,
                      ),
                    )),
                Content(),
              ],
            ),
          ),
        ),
    );
  }
}
