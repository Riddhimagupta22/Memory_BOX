import 'package:first_app/home.dart';
import 'package:first_app/login.dart';
import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

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
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              )),
          child: Column(children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: Image(
                  image: AssetImage(
                      "images/WhatsApp_Image_2024-10-29_at_23.21.36-removebg-preview.png"),
                  height: size.height * .3,
                ),
              ),
            ),
            SizedBox(
              height: size.height * .01,
            ),
            Container(
              height: size.height * .61,
              width: size.width * .80,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xffc398f9), Color(0xff7b6bef)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.all(Radius.circular(9)),
                boxShadow: [
                  new BoxShadow(
                    blurRadius: 1,
                  )
                ],
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      "Create Your Account",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                  ),
                  SizedBox(
                    height: size.height * .03,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                    child: SizedBox(
                      height: size.height * .055,
                      width: size.height*.5,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10)),
                          fillColor: Color(0xffceb9f9),
                          filled: true,
                          hintText: "Name",
                        ),
                      ),
                    ),
                  ), SizedBox(
                    height: size.height * .015,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                    child: SizedBox(
                      height: size.height * .055,
                      width: size.height*.5,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10)),
                          fillColor: Color(0xffceb9f9),
                          filled: true,
                          hintText: "Email",
                        ),
                      ),
                    ),
                  ),SizedBox(
                    height: size.height * .015,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                    child: SizedBox(
                      height: size.height * .055,
                      width: size.height*.5,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10)),
                          fillColor: Color(0xffceb9f9),
                          filled: true,
                          hintText: "Password",
                        ),
                      ),
                    ),
                  ),SizedBox(
                    height: size.height * .015,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                    child: SizedBox(
                      height: size.height * .055,
                      width: size.height*.5,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10)),
                          fillColor: Color(0xffceb9f9),
                          filled: true,
                          hintText: "Confirm Password",
                        ),
                      ),
                    ),
                  ),SizedBox(
                    height: size.height * .015,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                    child: Container(
                      height: size.height * 0.058,
                      width: size.width * .96,
                      decoration: BoxDecoration(
                          color: Color(0xff442d82),
                          borderRadius: BorderRadius.all(Radius.circular(50))),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 1),
                        child: Align(
                            alignment: Alignment.center,
                            child: InkWell(
                              child: Text(
                                "Sign Up",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              ),
                              onTap: (){
                                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> MyApp()));
                              },
                            )),
                      ),
                    ),
                  ),SizedBox(height: size.height*.02),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("Don't have an account ?"),
                        InkWell(child: Text("Log in",
                          style: TextStyle(color: Color(0xff422f91)),),
                          onTap: (){
                            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>LogIn()));
                          },)
                      ]
                  ),
                  SizedBox(height: size.height*.03),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                    child: Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [Expanded(child: Divider(
                          thickness: 2,color: Colors.black),),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 10),
                          child: Text("Or Sign up with",style: TextStyle(color: Colors.black45),
                          ),
                        ),
                        Expanded(child: Divider( thickness: 2,color: Colors.black),),
                      ],),
                  ),SizedBox(
                    height: size.height * .009,
                  ),
                  Container(
                    height: size.width * .132,
                    width: size.width * .69,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(24))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircleAvatar(backgroundImage: AssetImage("images/googlelogo.jpg"),
                        ),Text("Sign Up With Gmail",
                          style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,
                              fontSize: 15),)
                      ],
                    ),
                  )
                ],
              ),
            ),
          ]),
        ));
  }
}
