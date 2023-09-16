import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:travel_app_ui/screens/home/home_screen.dart';
class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  var _currentIndex = 0;
  List pages=[
    HomeScreen(),
    Text("calender"),
    Text("save"),
    Text("profile"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: _currentIndex,
        onTap: (i) => setState(() => _currentIndex = i),
        items: [
          /// Home
          SalomonBottomBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
              selectedColor: Color(0xff18A558),
            unselectedColor: Colors.grey
          ),

          /// Likes
          SalomonBottomBarItem(
            icon: Icon(Icons.calendar_month),
            title: Text("calender"),
              selectedColor: Color(0xff18A558),
              unselectedColor: Colors.grey
          ),

          /// Search
          SalomonBottomBarItem(
            icon: Icon(Icons.bookmark),
            title: Text("Collection"),
              selectedColor: Color(0xff18A558),
              unselectedColor: Colors.grey
          ),

          /// Profile
          SalomonBottomBarItem(
            icon: Icon(Icons.person),
            title: Text("Profile"),
            selectedColor: Color(0xff18A558),
              unselectedColor: Colors.grey
          ),
        ],
      ),
      body: pages[_currentIndex],
    );
  }
}
