import 'package:flutter/material.dart';

class CustomBlock extends StatelessWidget {
  final String image;
  final String label;
  final Color begin;
  final Color end;


  const CustomBlock(this.image, this.label, this.begin, this.end);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.width * 0.252,
          width:  MediaQuery.of(context).size.width * 0.254,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [begin, end])),
          child:Container(height: 20,width: 20,child: Image.asset(image)),
        ),
        Padding(padding: const EdgeInsets.only(top: 4.0,)),
        Text(
            label,
            style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),
          ),
      ],
    );
  }
}
