import 'package:flutter/material.dart';

class WelcomeCard extends StatelessWidget {
  const WelcomeCard({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10.0),
        child: Container(
          height: size.height * .190,
          width: size.width * 0.95,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xff3c2771),
                  Color(0xff0d091a),
                ]),
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
          child: Row(
            children: [
              Container(
                width: size.width / 1.8,
                alignment: Alignment.centerRight,
                child: Text(
                  "  Welcome to\nMEMORY BOX",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),

              Container(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10)
                    .copyWith(left: 20, bottom: 0, top: 35),
                height: size.height * 0.25,
                width: size.height * 0.177663,
                child: Image.asset(
                  "images/3-removebg-preview.png",
                ),
              ),
            ],
          ),
        ));
  }
}
