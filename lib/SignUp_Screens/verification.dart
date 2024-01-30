import 'package:flutter/material.dart';
import 'package:flutter_application_1/SignUp_Screens/welcome.dart';
import 'package:pinput/pinput.dart';
import 'dart:async';

class VerificationPage extends StatefulWidget {
  const VerificationPage({Key? key}) : super(key: key);

  @override
  State<VerificationPage> createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
  late Timer _resendCodeTimer;
  int _countdownSeconds = 10; // Set the initial countdown time to 10 seconds

  @override
  void initState() {
    super.initState();
    _resendCodeTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_countdownSeconds > 0) {
        setState(() {
          _countdownSeconds--;
        });
      } else {
        _resendCodeTimer.cancel(); // Stop the timer when countdown reaches 0
      }
    });
  }

  @override
  void dispose() {
    _resendCodeTimer.cancel(); // Cancel the timer when the widget is disposed
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 60,
      textStyle: const TextStyle(
        fontFamily: 'OnboardFont2',
        fontSize: 24,
        color: Color(0xff494949),
      ),
      decoration: BoxDecoration(
        color: const Color(0xffE6FFE1),
        borderRadius: BorderRadius.circular(40),
        border: Border.all(color: Colors.transparent),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacementNamed(
              context,
              'SignUp', // Replace with your SignUp page route
            );
          },
        ),
        title: const Padding(
          padding: EdgeInsets.only(left: 0.0), // Adjust left padding as needed
          child: Text(
            'Back',
            style: TextStyle(
              fontFamily: 'OnboardFont2',
              fontSize: 24.0,
              color: Color(0xff494949),
            ),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 180, 216, 174),
        elevation: 0, // Remove the shadow
      ),
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            color: const Color.fromARGB(255, 180, 216, 174),
          ),
          const Positioned(
            top: 30.0,
            left: 0.0,
            right: 220.0,
            child: Center(
              child: Text(
                'Almost there',
                style: TextStyle(
                  fontFamily: 'LoginPage',
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff494949),
                ),
              ),
            ),
          ),
          const Positioned(
            top: 65.0,
            left: 20.0,
            right: 100.0,
            child: Center(
              child: Text(
                'Enter the code sent by SMS for verification',
                style: TextStyle(
                  fontFamily: 'LoginPage',
                  fontSize: 14.0,
                  fontWeight: FontWeight.normal,
                  color: Color(0xff494949),
                ),
              ),
            ),
          ),
          Positioned(
            top: 150.0,
            left: 20.0,
            right: 30.0,
            child: Pinput(
              length: 4,
              defaultPinTheme: defaultPinTheme,
              focusedPinTheme: defaultPinTheme.copyWith(
                decoration: defaultPinTheme.decoration!.copyWith(
                  border: Border.all(
                    color: const Color(0xffE6FFE1),
                  ),
                ),
              ),
              onCompleted: (pin) => debugPrint(pin),
            ),
          ),
          Positioned(
            top: 280.0,
            left: 20.0,
            right: 30.0,
            child: ElevatedButton(
              onPressed: () {
                // Add your verification logic here
                // If verification is successful, navigate to the welcome page
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const WelcomePage(), // Replace with your WelcomePage widget
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: const Color(0xff494949),
                backgroundColor: Colors.yellow,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0),
                  side: const BorderSide(color: Color(0xff494949), width: 2.0),
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 2, vertical: 10),
                child: Text(
                  'Verify',
                  style: TextStyle(
                    fontFamily: 'LoginPage1',
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          const Positioned(
            top: 350.0,
            left: 0,
            right: 0,
            child: Center(
              child: Text(
                "Didn't receive any code?",
                style:TextStyle(
                  fontFamily: 'LoginPage1',
                  fontSize: 16.0,
                  fontWeight: FontWeight.normal,
                  color: Color(0xff494949),
                ),
              ),
            ),
          ),
          Positioned(
            top: 375.0,
            left: 0,
            right: 0,
            child: GestureDetector(
              onTap: () {
                if (_countdownSeconds == 0) {
                  // Trigger the resend code logic here
                  // Reset the countdown timer
                  setState(() {
                    _countdownSeconds = 10;
                  });
                  _resendCodeTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
                    if (_countdownSeconds > 0) {
                      setState(() {
                        _countdownSeconds--;
                      });
                    } else {
                      _resendCodeTimer.cancel(); // Stop the timer when countdown reaches 0
                    }
                  });
                }
              },
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  _countdownSeconds > 0
                      ? "Resend code in $_countdownSeconds seconds"
                      : "Resend code",
                  style: const TextStyle(
                    fontFamily: 'LoginPage1',
                    fontSize: 16.0,
                    color: Color(0xff494949),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
