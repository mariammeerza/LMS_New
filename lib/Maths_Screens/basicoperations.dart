import 'package:flutter/material.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';

class BasicOperations extends StatefulWidget {
  const BasicOperations({Key? key}) : super(key: key);

  @override
  State<BasicOperations> createState() => _BasicOperationsState();
}

class _BasicOperationsState extends State<BasicOperations> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var screenHeight = size.height;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(40),
              bottomRight: Radius.circular(40),
            ),
            child: Container(
              height: screenHeight * 0.23,
              decoration: const BoxDecoration(
                color: Color(0XFFCDE9C8),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.15,
              top: MediaQuery.of(context).size.height * 0.035,
            ),
            child: const Text(
              'Back',
              style: TextStyle(
                fontFamily: 'OnboardFont2',
                fontSize: 27.0,
                color: Color(0xff494949),
              ),
            ),
          ),
          Positioned(
            top: screenHeight * 0.03,
            left: 10,
            child: IconButton(
              icon: const Icon(Icons.arrow_back),
              iconSize: 33,
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.only(
                top: screenHeight * 0.18,
                left: screenHeight * 0.05,
              ),
              child: Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    width: screenHeight * 0.38,
                    height: screenHeight * 0.05,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border:
                          Border.all(width: 2, color: const Color(0XFFCDE9C8)),
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: RichText(
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text: 'Unit 01: ',
                            style: TextStyle(
                              fontFamily: 'OnboardFont1',
                              fontSize: 20.0,
                              color: Color(0xFF7BA24A),
                            ),
                          ),
                          TextSpan(
                            text: 'Basic Operations',
                            style: TextStyle(
                              fontFamily: 'OnboardFont1',
                              fontSize: 20.0,
                              color: Color(0xFF494949),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: screenHeight * 0.33,
                    top: screenHeight * 0.001,
                    child: CircularCountDownTimer(
                      duration: 20,
                      initialDuration: 0,
                      controller: CountDownController(),
                      width: 40,
                      height: 40,
                      ringColor: Colors.grey,
                      ringGradient: null,
                      fillColor: const Color(0XFFFDCFD7),
                      fillGradient: null,
                      backgroundColor: Colors.white,
                      backgroundGradient: null,
                      strokeWidth: 10.0,
                      strokeCap: StrokeCap.round,
                      textStyle: const TextStyle(
                        fontSize: 16.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      textFormat: CountdownTextFormat.S,
                      isReverse: true,
                      isReverseAnimation: false,
                      isTimerTextShown: true,
                      autoStart: true,
                      onStart: () {
                        // print('Countdown Started');
                      },
                      onComplete: () {
                        // print('Countdown Ended');
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        bottom: screenHeight * 0.60,
                        right: screenHeight * 0.05),
                    child: Center(
                      child: RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(
                              text: 'Q1:',
                              style: TextStyle(
                                fontFamily: 'OnboardFont1',
                                fontSize: 20.0,
                                color: Color(0xFF7BA24A),
                              ),
                            ),
                            TextSpan(
                              text:
                                  'Which of these calculations will yield 3.7?',
                              style: TextStyle(
                                fontFamily: 'OnboardFont1',
                                fontSize: 20.0,
                                color: Color(0xFF494949),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                      top: screenHeight * 0.2,
                      left: screenHeight * 0.005,
                      child: Container(
                        width: screenHeight * 0.4,
                        height: screenHeight * 0.1,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(35),
                          border: Border.all(width: 2, color: Colors.black),
                          // boxShadow: const [
                          //   BoxShadow(
                          //     color: Color(0xFFFFCD83),
                          //     offset: Offset(5.0, 6.0),
                          //   ),
                          // ],
                        ),
                      ))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
