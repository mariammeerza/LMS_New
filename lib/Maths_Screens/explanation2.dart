import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Explanation2 extends StatelessWidget {
  final String selectedAnswer;
  const Explanation2({required this.selectedAnswer});

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
                  Padding(
                    padding: EdgeInsets.only(
                      top: screenHeight * 0.1,
                      left: screenHeight * 0.001,
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: RichText(
                            text: const TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Q2: ',
                                  style: TextStyle(
                                    fontFamily: 'OnboardFont1',
                                    fontSize: 20.0,
                                    color: Color(0xFF7BA24A),
                                  ),
                                ),
                                TextSpan(
                                  text:
                                      'Which of these pair are equally distant from 11?',
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
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: screenHeight * 0.14,
                      left: screenHeight * 0.0005,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        IconButton(
                          onPressed: () {
                            Clipboard.setData(
                              const ClipboardData(
                                text:
                                    'Which of these pair are equally distant from 11?',
                              ),
                            );
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Question copied to clipboard'),
                              ),
                            );
                          },
                          icon: const Icon(
                            Icons.content_copy,
                            size: 15,
                          ),
                        ),
                        const SizedBox(width: 1),
                        const Text(
                          'Copy and Ask AI Tutor',
                          style: TextStyle(
                            fontFamily: 'LoginPage1',
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: EdgeInsets.only(
                      top: screenHeight * 0.23,
                    ),
                    child: Container(
                      width: screenHeight * 0.38,
                      height: screenHeight * 0.05,
                      decoration: BoxDecoration(
                        color: const Color(0xffFFF5A0),
                        border: Border.all(
                            width: 2, color: const Color(0xFF494949)),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Center(
                        child: Text(
                          'Your Selected Answer: $selectedAnswer',
                          style: const TextStyle(
                            fontFamily: 'LoginPage1',
                            fontSize: 18,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 280),
                    child: Divider(
                      color: Colors.black,
                      thickness: 2,
                      indent: screenHeight * 0.0000000001,
                      endIndent: screenHeight * 0.035,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: screenHeight * 0.35,
                      left: screenHeight * 0.01,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Correct Answer:',
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'LoginPage1',
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Container(
                          width: screenHeight * 0.38,
                          height: screenHeight * 0.05,
                          decoration: BoxDecoration(
                            color: const Color(0xffFFF5A0),
                            border: Border.all(
                                width: 2, color: const Color(0xFF494949)),
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: const Center(
                            child: Text(
                              'c) 11.27 and 10.73',
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          'Explanation:',
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'LoginPage1',
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Expanded(
                          child: Text(
                            'To determine which pair of numbers are equally distant from 11, we need to calculate the absolute differences between each number in the pair and 11. The pair with the same absolute difference will be equally distant from 11. Let\'s calculate the absolute differences\n\n'
                            'For pair (9.5, 13.5):\n'
                            '  Absolute difference between 9.5 and 11 |9.5 - 11| = 1.5\n'
                            '  Absolute difference between 13.5 and 11 |13.5 - 11| = 2.5\n\n'
                            'For pair (9.99, 12.1):\n'
                            '  Absolute difference between 9.99 and 11: |9.99 - 11| = 1.01\n'
                            '  Absolute difference between 12.1 and 11: |12.1 - 11| = 1.1\n\n'
                            'For pair (11.27, 10.73):\n'
                            '  Absolute difference between 11.27 and 11: |11.27 - 11| = 0.27\n'
                            '  Absolute difference between 10.73 and 11: |10.73 - 11| = 0.27\n\n'
                            'For pair (10.95, 11.95):\n'
                            '  Absolute difference between 10.95 and 11: |10.95 - 11| = 0.05\n'
                            '  Absolute difference between 11.95 and 11: |11.95 - 11| = 0.95\n\n'
                            'For pair (12.45, 10.45):\n'
                            '  Absolute difference between 12.45 and 11: |12.45 - 11| = 1.45\n'
                            '  Absolute difference between 10.45 and 11: |10.45 - 11| = 0.55\n\n'
                            'Based on the calculations, we can see that the pair (11.27, 10.73) has the same absolute difference from 11, which is approximately 0.27. So, the answer is:\n\n'
                            'c. 11.27 and 10.73',
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'LoginPage1',
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: screenHeight * 0.01,
                    left: screenHeight * 0.15,
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width - 200,
                      child: TextButton(
                        onPressed: () {
                          // Add your continue button logic here
                        },
                        style: TextButton.styleFrom(
                          foregroundColor: const Color(0xff494949),
                          backgroundColor: Colors.yellow,
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40.0),
                            side: const BorderSide(
                                color: Color(0xff494949), width: 2.0),
                          ),
                        ),
                        child: const Text(
                          'Continue',
                          style: TextStyle(
                            fontFamily: 'LoginPage1',
                            fontSize: 26.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
