import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'Card.dart';
import 'CustomBlock.dart';

class Content extends StatelessWidget {
  const Content({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 30.0, left: 4.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Hey Rhea!",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'WELCOME BACK',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 110.0,
                top: 30.0,
              ),
              child: Icon(Icons.local_fire_department),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Text(
                "35",
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 10, top: 30.0),
              child: CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage(
                  "images/4-removebg-preview.png",
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        WelcomeCard(),
        Padding(
          padding: const EdgeInsets.only(
            top: 20.0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomBlock("images/6-removebg-preview (2).png",
                  "GAMIFIED TRAINING", Color(0xff9528c7), Color(0xffda0e8c)),
              CustomBlock('images/2-removebg-preview.png', "MY LOCATION",
                  Color(0xfff6e408), Color(0xfff81d77)),
              CustomBlock('images/1-removebg-preview.png', "TASK SCHEDULER",
                  Color(0xff000d32), Color(0xff006b84)),
            ],
          ),
        ),
        SizedBox(
          height: size.height * .01,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              "FEATURED GAMES",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
          child: Container(
            height: size.height * .150,
            decoration: BoxDecoration(
              boxShadow: [BoxShadow(color: Colors.black, blurRadius: 23)],
              gradient: LinearGradient(
                colors: [Color(0xff452f86), Color(0xff1e1439)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.all(
                Radius.circular(8.0),
              ),
              image: DecorationImage(
                image: AssetImage(
                  "images/10jpg-removebg-preview.png",
                ),
                fit: BoxFit.contain,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    "3D ART PUZZLE",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                // Padding(
                //   padding: const EdgeInsets.only( right: 90,top: 9),
                //   child: Center(
                //     child: Image.asset(
                //       "images/10jpg-removebg-preview.png", fit: BoxFit.cover,
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
          child: Container(
            height: size.height * .200,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xff402a6d),
                  Color(0xff100b21),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.all(
                Radius.circular(8.0),
              ),
              image: DecorationImage(
                image: AssetImage(
                  "images/5.jpg",
                ),
                fit: BoxFit.cover,
                opacity: 0.21,
              ),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        "Add location ",
                        style: TextStyle(
                            fontSize: 22,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
