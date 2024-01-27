import 'package:flutter/material.dart';
import 'package:flutter_application_1/Login_Screens/login.dart';

class Onboard3 extends StatelessWidget {
  const Onboard3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: const Color.fromARGB(255, 180, 216, 174),
        child: SafeArea(
          child: Stack(
            alignment: Alignment.center,
            children: [
              // New asset at top left corner
              Positioned(
                top: 5,
                left: 100,
                child: Image.asset(
                  "assets/star2.png",
                  height: 60, // Adjust the height as needed
                ),
              ),
              Positioned(
                top: 60,
                left: 300,
                child: Image.asset(
                  "assets/clock.png",
                  height: 80, // Adjust the height as needed
                ),
              ),
              Positioned(
                top: 80,
                child: Image.asset(
                  "assets/object2.png",
                  height: 350,
                ),
              ),
              Positioned(
                top: -30,
                right: 160,
                child: Image.asset(
                  "assets/onboard3.png",
                  height: 350,
                ),
              ),
              Positioned(
                top: 390, // Adjusted position to shift upwards
                child: Container(
                  width: 350,
                  height: 350,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(40),
                    border: Border.all(width: 2, color: Colors.black),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, offset: Offset(5.0, 6.0)),
                    ],
                  ),
                  child: const Column(
                    children: [
                      SizedBox(height: 35),
                      Positioned(
                        top: 120.0,
                        child: Text(
                          "Mockup Exams",
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontFamily: 'OnboardFont1',
                            fontSize: 35,
                            color: Color(0xff494949),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 2),
                      Positioned(
                        top: 140.0,
                        child: Text(
                          "& Quiz",
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontFamily: 'OnboardFont1',
                            fontSize: 35,
                            color: Color(0xff494949),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
                      Positioned(
                        top: 140.0,
                        child: Text(
                          "Simulate exams, test your",
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontFamily: 'OnboardFont2',
                            fontSize: 21,
                            color: Color(0xff494949),
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                      SizedBox(height: 3),
                      Positioned(
                        top: 140.0,
                        child: Text(
                          "knowledge, and conquer your",
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontFamily: 'OnboardFont2',
                            fontSize: 21,
                            color: Color(0xff494949),
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                      SizedBox(height: 3),
                      Positioned(
                        top: 140.0,
                        child: Text(
                          "study goals.",
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontFamily: 'OnboardFont2',
                            fontSize: 21,
                            color: Color(0xff494949),
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 40,
                child: GestureDetector(
                  onTap: () {
                    // Navigate to the Login screen
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Login(),
                      ),
                    );
                  },
                  child: Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 243, 233, 33),
                      shape: BoxShape.circle,
                      border: Border.all(width: 2, color: Colors.black),
                    ),
                    child: const Icon(
                      Icons.arrow_forward,
                      color: Color(0xff494949),
                      size: 40,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
