import 'package:flutter/material.dart';
class WelcomeCard extends StatelessWidget {
  const WelcomeCard({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return  Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
      child: Container(
        height: size.height * .190,
        width: size.width *0.95,
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
              width: size.width/1.8,
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

            Column(
              children: [
                Container( margin: EdgeInsets.only(top: 130),
                  child: Text("....",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color(0xfff3e8e8),
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                  ),
                ),),
              ],
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 20,horizontal: 1).copyWith(left: 10,),
              height: size.height*0.18,
              width: size.height*0.13,
              child: Image.asset(
                "images/3-removebg-preview.png",
              ),
            ),
          ],),
      ),
    );
  }
}
