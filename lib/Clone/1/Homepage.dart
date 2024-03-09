import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/Clone/pages/account.dart';
import 'package:project1/Clone/pages/add.dart';
import 'package:project1/Clone/pages/home.dart';
import 'package:project1/Clone/pages/reels.dart';
import 'package:project1/Clone/pages/search.dart';

void main(){
  runApp(DevicePreview(
    builder: (context) {
      return MaterialApp(
        useInheritedMediaQuery: true,
        debugShowCheckedModeBanner: false,
        home: Homepage(),);
    }
  ));
}

class Homepage extends StatefulWidget{
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  int _seletedIndex = 2;
  void _navigateBottonNavBar(int index) {
    setState(() {
      _seletedIndex = index;
    });
  }

  final List<Widget> _children = [

    UserHome(),
    UserSearch(),
    UserAdd(),
    UserReels(),
    UserAccount(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_seletedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _seletedIndex,
        onTap: _navigateBottonNavBar,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: "search"),
          BottomNavigationBarItem(icon: Icon(Icons.add_circle_outline_outlined),label: "add"),
          BottomNavigationBarItem(icon: Icon(Icons.slow_motion_video),label: "reels"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "account"),
        ],
      ),
    );
  }
}