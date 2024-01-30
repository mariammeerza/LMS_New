import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.transparent, // Set the background color to transparent
          ),
          Center(
            child: Container(
              width: 360, // Set the width of the square
              height: 350, // Set the height of the square
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(22.0),
                border: Border.all(
                  color: Colors.black, // Set the border color
                  width: 4.0, // Set the border width
                ),
                image: const DecorationImage(
                  image: AssetImage('assets/welcome.png'),
                  fit: BoxFit.scaleDown,
                  alignment: Alignment(0.05, -0.9),
                ),
              ),
              
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Welcome On Board',
                    style: TextStyle(
                      fontFamily: 'OnboardFont1', // Replace with your font family
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff494949),
                    ),
                  ),
                  SizedBox(height: 180),// Adjust the space between image and text
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
