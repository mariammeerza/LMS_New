import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/Home_Screens/customnavibar.dart';
import 'package:flutter_application_1/Maths_Screens/basicoperations4.dart';

class Explanation3 extends StatelessWidget {

   final String selectedAnswer;
  const Explanation3({required this.selectedAnswer});

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
                      top: screenHeight * 0.05,
                      left: screenHeight * 0.001,
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: RichText(
                            text: const TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Q3: ',
                                  style: TextStyle(
                                    fontFamily: 'OnboardFont1',
                                    fontSize: 20.0,
                                    color: Color(0xFF7BA24A),
                                  ),
                                ),
                                TextSpan(
                                  text:
                                      'Which of calculations will give the biggest amount?',
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
                      top: screenHeight * 0.09,
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
                                    'Which of calculations will give the biggest amount?',
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
                      top: screenHeight * 0.15,
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
                    padding: const EdgeInsets.symmetric(vertical: 190),
                    child: Divider(
                      color: Colors.black,
                      thickness: 2,
                      indent: screenHeight * 0.0000000001,
                      endIndent: screenHeight * 0.035,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: screenHeight * 0.23,
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
                            color: const Color(0xffB4D8AE),
                            border: Border.all(
                                width: 2, color: const Color(0xFF494949)),
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: const Center(
                            child: Text(
                              'c) - 12 + 14 – 8 + 16',
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
                        const SizedBox(height: 2),
                        const Expanded(
                          child: Text(
                            'After evaluating all the given calculations, it\'s evident that option c) - 12 + 14 – 8 + 16 produces the highest value, totaling 10.This calculation adds positive numbers and subtracts negative numbers, resulting in the largest sum among the given choices. Hence, option c) is the correct answer for obtaining the biggest amount.',
                            style: TextStyle(
                              fontSize: 17,
                              fontFamily: 'LoginPage1',
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: screenHeight * 0.05,
                    left: screenHeight * 0.025,
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width - 120,
                      child: TextButton(
                        onPressed: () {
                           Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const BasicOperations4(),
                    ),
                  );
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
      bottomNavigationBar: SemiCircleCustomBar(),
    );
  }
}
