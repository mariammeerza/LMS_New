import 'package:flutter/material.dart';

class Onboard1 extends StatelessWidget {
  final PageController pageController;

  const Onboard1({Key? key, required this.pageController}) : super(key: key);

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
                top: 20,
                left: 20,
                child: Image.asset(
                  "assets/star.png",
                  height: 40, // Adjust the height as needed
                ),
              ),

              // Image
              Positioned(
                top: 30,
                child: Image.asset(
                  "assets/onboarding_1.png",
                  height: 350,
                ),
              ),

              // Container below the image
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
                          "Connect, Learn",
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
                          "& Grow",
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
                          "Engage, collaborate, and learn",
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
                          "together with our vibrant",
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
                          "community.",
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

              // New asset at bottom right corner
              Positioned(
                bottom: 50,
                left: 160,
                child: GestureDetector(
                  onTap: () {
                    // Navigate to the next page
                    pageController.nextPage(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeIn,
                    );
                  },
                  child: Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 243, 233, 33), // Adjust the color as needed
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
              // New asset at bottom right corner
              Positioned(
                bottom: 15,
                right: 20,
                child: Image.asset(
                  "assets/vector.png",
                  height: 80, // Adjust the height as needed
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
