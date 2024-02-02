import 'package:flutter/material.dart';
import 'package:flutter_application_1/Login_Screens/login.dart';

class childProfile extends StatefulWidget {
  const childProfile({super.key});

  @override
  State<childProfile> createState() => _childProfileState();
}

class _childProfileState extends State<childProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // Navigate to the login page when the back button is clicked
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const Login(),
              ),
            );
          },
        ),
        title: Padding(
          padding: EdgeInsets.only(
            left: MediaQuery.of(context).size.width * 0.0,
          ),
          child: const Text(
            'Back',
            style: TextStyle(
              fontFamily: 'OnboardFont2',
              fontSize: 26.0,
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
          Positioned(
            top: MediaQuery.of(context).size.width * 0.2,
            left: MediaQuery.of(context).size.width * 0.05,
            right: MediaQuery.of(context).size.width * 0.3,
            child: const Center(
              child: Text(
                'Create Child\'s Profile',
                style: TextStyle(
                  fontFamily: 'LoginPage1',
                  fontSize: 27.0,
                  fontWeight: FontWeight.normal,
                  color: Color(0xff494949),
                ),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.width * 0.3,
            left: MediaQuery.of(context).size.width * 0.05,
            right: MediaQuery.of(context).size.width * 0.2,
            child: const Center(
              child: Text(
                'Provide your Profile picture or select an Avatar ',
                style: TextStyle(
                  fontFamily: 'OnboardFont2',
                  fontSize: 14.0,
                  fontWeight: FontWeight.normal,
                  color: Color(0xff494949),
                ),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.width * 0.2,
            left: MediaQuery.of(context).size.width * 0.4,
            right: MediaQuery.of(context).size.width * 0.4,
            child: Container(
              width: 100,
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/child1.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
