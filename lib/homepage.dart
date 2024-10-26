import 'package:flutter/material.dart';

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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
      ),
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
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(body: Column( mainAxisAlignment: MainAxisAlignment.center,
    children: [Center(
      child: Text
      ("Welcome to homepage",
      style: TextStyle(fontWeight: FontWeight.bold,
      fontSize: 25,),),
    ),
    SizedBox(height: 15,),
    ElevatedButton(onPressed: (){
      Navigator.push(context,
          MaterialPageRoute(builder: (context)=> MyApp(),),);},
        child:Text("NEXT") ),

    ],),
    );
    }
    }