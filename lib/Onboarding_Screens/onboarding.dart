import 'package:flutter/material.dart';
import 'package:flutter_application_1/Login_Screens/login.dart';
import 'package:flutter_application_1/Onboarding_Screens/onboard_1.dart';
import 'package:flutter_application_1/Onboarding_Screens/onboard_2.dart';
import 'package:flutter_application_1/Onboarding_Screens/onboard_3.dart';


class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  State<Onboarding> createState() => _OnboardingScreen();
}

class _OnboardingScreen extends State<Onboarding> {
  PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // PageView
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              // You can add logic here if needed
            },
            children: [
              Onboard1(pageController: _controller),
              Onboard2(pageController: _controller),
              const Onboard3(),
            ],
          ),

          // Skip Button
          Positioned(
            top: 50.0,
            right: 20.0,
            child: TextButton(
              onPressed: () {
                // Add the logic to navigate to the Login screen
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Login(),
                  ),
                );
              },
              child: const Text(
                'Skip',
                style: TextStyle(
                  fontFamily: 'OnboardFont2',
                  color: Color.fromARGB(255, 31, 30, 30),
                  fontSize: 21.0,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
