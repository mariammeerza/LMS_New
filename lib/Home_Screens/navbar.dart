import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter_application_1/Home_Screens/home_1.dart';
import 'package:flutter_application_1/Learn_screens/learn.dart';
import 'package:flutter_application_1/Test_Screens/test.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
 final items = const [
    Icon(Icons.people, size: 30,),
    Icon(Icons.person, size: 30,),
    Icon(Icons.add, size: 30,),
    Icon(Icons.search_outlined, size: 30,)
  ];

  int index = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      bottomNavigationBar: CurvedNavigationBar(
        items: items,
        index: index,
        onTap: (selctedIndex){
          setState(() {
            index = selctedIndex;
          });
        },
        height: 70,
        backgroundColor: Colors.transparent,
        animationDuration: const Duration(milliseconds: 300),
        // animationCurve: ,
      ),
      body: Container(
        color: Colors.blue,
        width: double.infinity,
        height: double.infinity,
        alignment: Alignment.center,
        child: getSelectedWidget(index: index)
      ),
    );
  }

  Widget getSelectedWidget({required int index}){
    Widget widget;
    switch(index){
      case 0:
        widget = const Learn();
        break;
      case 1:
        widget = const HomePage();
        break;
      default:
        widget = const TestScreen();
        break;
    }
    return widget;
  }
}