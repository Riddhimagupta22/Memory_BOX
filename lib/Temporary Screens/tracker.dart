import 'package:first_app/Temporary%20Screens/chatbox.dart';
import 'package:flutter/material.dart';

class Tracker extends StatelessWidget {
  const Tracker({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Material(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [Color(0xffc398f9), Color(0xff7b6bef)],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 110,
              ),
              child: Container(
                child: Image(
                  image: AssetImage(
                      "images/WhatsApp_Image_2024-10-28_at_01.30.28-removebg-preview.png"),
                  height: size.height * .26,
                  width: size.height * .25,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    ".",
                    style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  Text(
                    "...",
                    style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )
                ],
              ),
            ),
            SizedBox(
              height: size.height * .04,
            ),
            Container(
              child: Column(
                children: [
                  Text(
                    "Prescription & Dosage",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: "Cabin",
                        fontSize: 30,
                        color: Colors.white),
                  ),
                  Text(
                    "Tracker",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: "Cabin",
                        fontSize: 30,
                        color: Colors.white),
                  ),
                ],
              ),
              height: size.width * .25,
              width: size.width * .85,
            ),
            Container(
              height: size.width * .69,
              width: size.width * .999,
              child: Column(
                children: [
                  SizedBox(height: size.height * .01),
                  Text(
                    "Memory Box is a mobile based application backed by",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontFamily: "Cabin",
                        fontSize: 14,
                        color: Colors.white),
                  ),
                  SizedBox(height: size.height * .01),
                  Text(
                    "a web-application that ensures compatibility and",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontFamily: "Cabin",
                        fontSize: 15,
                        color: Colors.white),
                  ),
                  SizedBox(height: size.height * .01),
                  Text(
                    "stability in its own accord",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontFamily: "Cabin",
                        fontSize: 15,
                        color: Colors.white),
                  ),
                  SizedBox(height: size.height * .08),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => Chatbox()));
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff442d82)),
                    child: Text(
                      "LET'S GO",
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
