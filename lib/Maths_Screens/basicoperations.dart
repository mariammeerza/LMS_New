import 'package:flutter/material.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';

class BasicOperations extends StatefulWidget {
  const BasicOperations({super.key});

  @override
  State<BasicOperations> createState() => _BasicOperationsState();
}

class _BasicOperationsState extends State<BasicOperations> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var screenHeight = size.height;
    var screenWidth = size.width;

    return Scaffold(
        body: Stack(children: <Widget>[
      ClipRRect(
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(25),
          bottomRight: Radius.circular(25),
        ),
        child: Container(
          height: screenHeight * 0.28,
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
              top: screenHeight * 0.23,
              left: screenHeight * 0.05,
            ),
            child: Column(
              children: [
                Container(

                  width: screenHeight * 0.38,
                  height: screenHeight * 0.05,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 2, color: Color(0XFFCDE9C8)),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  //                 Padding(
                  // padding: EdgeInsets.only(
                  //   left: screenHeight * 0.33,
                  //   bottom: screenHeight * 0.5,
                  // ),
                  child: CircularCountDownTimer(
                          duration: 20,
                          initialDuration: 0,
                          controller: CountDownController(),
                          width: 50,
                          height: 50,
                          ringColor: Colors.grey,
                          ringGradient: null,
                          fillColor: Colors.blue,
                          fillGradient: null,
                          backgroundColor: Colors.white,
                          backgroundGradient: null,
                          strokeWidth: 10.0,
                          strokeCap: StrokeCap.round,
                          textStyle: const TextStyle(
                              fontSize: 16.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                          textFormat: CountdownTextFormat.S,
                          isReverse: true,
                          isReverseAnimation: false,
                          isTimerTextShown: true,
                          autoStart: true,
                          onStart: () {
                            print('Countdown Started');
                          },
                          onComplete: () {
                            print('Countdown Ended');
                          },
                        ),
                ),
                  child: Container(
                    padding: EdgeInsets.only(
                      top: screenHeight * 0.01,
                      left: screenHeight * 0.02,
                    ),
                    child: RichText(
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text: 'Unit 01: ',
                            style: TextStyle(
                              fontFamily: 'OnboardFont1',
                              fontSize: 22.0,
                              color: Color(0xFF7BA24A),
                            ),
                          ),
                          TextSpan(
                            text: 'Basic Operations',
                            style: TextStyle(
                              fontFamily: 'OnboardFont1',
                              fontSize: 22.0,
                              color: Color(0xFF494949),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                
                // Padding(
                //   padding: EdgeInsets.only(
                //     left: screenHeight * 0.33,
                //     bottom: screenHeight * 0.5,
                //   ),
                //   child: CircularCountDownTimer(
                //           duration: 20,
                //           initialDuration: 0,
                //           controller: CountDownController(),
                //           width: 50,
                //           height: 50,
                //           ringColor: Colors.grey,
                //           ringGradient: null,
                //           fillColor: Colors.blue,
                //           fillGradient: null,
                //           backgroundColor: Colors.white,
                //           backgroundGradient: null,
                //           strokeWidth: 10.0,
                //           strokeCap: StrokeCap.round,
                //           textStyle: const TextStyle(
                //               fontSize: 16.0,
                //               color: Colors.black,
                //               fontWeight: FontWeight.bold),
                //           textFormat: CountdownTextFormat.S,
                //           isReverse: true,
                //           isReverseAnimation: false,
                //           isTimerTextShown: true,
                //           autoStart: true,
                //           onStart: () {
                //             print('Countdown Started');
                //           },
                //           onComplete: () {
                //             print('Countdown Ended');
                //           },
                //         ),
                // ),
              ],
            )),
      ),
    ]));
  }
}
