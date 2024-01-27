import 'package:flutter/material.dart';
import 'package:flutter_application_1/Login_Screens/ForgotPassword.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: const Color.fromARGB(255, 180, 216, 174),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            // Welcome Text
            const Positioned(
              top: 50.0,
              child: Text(
                'Welcome To',
                style: TextStyle(
                  fontFamily: 'LoginPage',
                  fontSize: 24.0,
                  fontWeight: FontWeight.normal,
                  color: Color(0xff494949),
                ),
              ),
            ),
            // Image
            Positioned(
              top: 100.0, // Adjust the position as needed
              child: Image.asset(
                'assets/img1splash.png', // Replace with your image path
                height: 150, // Adjust the height as needed
              ),
            ),
            const Positioned(
              top: 370.0,
              child: Text(
                'Login',
                style: TextStyle(
                  fontFamily: 'LoginPage1',
                  fontSize: 34.0,
                  fontWeight: FontWeight.normal,
                  color: Color(0xff494949),
                ),
              ),
            ),
            // Phone Number TextField with Smartphone Icon on the Right
            Positioned(
              top: 435.0,
              child: Container(
                width: 380.0,
                child: TextField(
                  style: const TextStyle(
                    fontFamily: 'OnboardFont2',
                    fontSize: 14.0,
                    color: Color(0xff494949),
                    fontWeight: FontWeight.normal,
                  ),
                  decoration: InputDecoration(
                    labelText: 'Phone Number',
                    filled: true,
                    fillColor: const Color(0xffE6FFE1),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    suffixIcon: const Icon(
                      Icons.smartphone, // Use the smartphone icon
                      color: Color(0xff494949), // Adjust the icon color
                    ),
                  ),
                ),
              ),
            ),
            // SizedBox for spacing
            const SizedBox(
              height: 20,
            ),
            // Password TextField with Lock Icon on the Right
            Positioned(
              top: 500.0,
              child: Container(
                width: 380.0,
                child: TextField(
                  obscureText: true, // Set to true for a password field
                  style: const TextStyle(
                    fontFamily: 'OnboardFont2',
                    fontSize: 14.0,
                    color: Color(0xff494949),
                    fontWeight: FontWeight.normal,
                  ),
                  decoration: InputDecoration(
                    labelText: 'Password',
                    filled: true,
                    fillColor: const Color(0xffE6FFE1),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    suffixIcon: const Icon(
                      Icons.lock, // Use the lock icon
                      color: Color(0xff494949), // Adjust the icon color
                    ),
                  ),
                ),
              ),
            ),
            // Forgot Password? text
            Positioned(
              top: 570.0,
              right: 20,
              child: GestureDetector(
                onTap: () {
                  // Navigate to ForgotPasswordPage
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ForgotPasswordPage(),
                    ),
                  );
                },
                child: const Text(
                  'Forgot Password?',
                  style: TextStyle(
                    fontFamily: 'LoginPage1',
                    fontSize: 14.0,
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ),
            // Login Button
            Positioned(
              top: 620.0,
              child: ElevatedButton(
                onPressed: () {
                  // Add your login functionality here
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: const Color(0xff494949),
                  backgroundColor: Colors.yellow, // Text color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Text(
                    'Login',
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
    );
  }
}
