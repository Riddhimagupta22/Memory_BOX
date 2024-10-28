import 'package:first_app/Bottomnavbar/Profile.dart';
import 'package:first_app/Bottomnavbar/Search.dart';
import 'package:first_app/home.dart';
import 'package:flutter/material.dart';

class Mainpage extends StatefulWidget {
  var name;
  Mainpage(this.name);

  @override
  _MainpageState createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  final PageController _pageViewController = PageController();
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffc8b9f7),
      body: PageView(
        controller: _pageViewController,
        onPageChanged: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        children: [
          MyHomePage(title: widget.name),
          SearchPage(),
          ProfilePage(),
          ProfilePage(),
        ],
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
        child: BottomNavigationBar(
          iconSize: 25,
          backgroundColor: const Color(0xff402a6d),
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white60,
          currentIndex: _selectedIndex,
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
            _pageViewController.jumpToPage(index);
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bar_chart),
              label: 'Analytics',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: 'Notifications',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ],
        ),
      ),
    );
  }
}
