import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class SemiCircleCustomBar extends StatefulWidget {
  const SemiCircleCustomBar({Key? key}) : super(key: key);

  @override
  _SemiCircleCustomBarState createState() => _SemiCircleCustomBarState();
}

class _SemiCircleCustomBarState extends State<SemiCircleCustomBar> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3), 
          ),
        ],
      ),
      child: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        index: _currentIndex,
        height: 60.0, // Increased height to accommodate text
        items: <Widget>[
          _buildNavigationItem('assets/home3.png', 'Home'),
          _buildNavigationItem('assets/learn.png', 'Learn'),
          _buildNavigationItem('assets/ai_icon.png', 'AI Tutor'),
          _buildNavigationItem('assets/test.png', 'Test'),
          _buildNavigationItem('assets/Connect.png', 'Connect'),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
            _navigateToPage(index);
          });
        },
      ),
    );
  }

  Widget _buildNavigationItem(String imagePath, String label) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(imagePath, width: 30, height: 30),
        SizedBox(height: 4), // Adjust this value as needed for spacing
        Text(
          label,
          style: const TextStyle(
            fontFamily: 'NavBar',
            fontSize: 16, // Adjust the font size as needed
            fontWeight: FontWeight.bold, // Adjust the font weight as needed
            color: Color(0XFF454545), // Adjust the text color as needed
          ),
        ),
      ],
    );
  }

  void _navigateToPage(int index) {
    switch (index) {
      case 0:
        // Navigate to Home page
        Navigator.pushReplacementNamed(context, '/home');
        break;
      case 1:
        // Navigate to Learn page
        Navigator.pushReplacementNamed(context, '/learn');
        break;
      case 2:
        // Navigate to AI Tutor page
        Navigator.pushReplacementNamed(context, '/ai_tutor');
        break;
      case 3:
        // Navigate to Test page
        Navigator.pushReplacementNamed(context, '/test');
        break;
      case 4:
        // Navigate to Connect page
        Navigator.pushReplacementNamed(context, '/connect');
        break;
      default:
        // Do nothing
        break;
    }
  }
}
