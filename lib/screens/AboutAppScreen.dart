import 'package:flutter/material.dart';

class AboutAppScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Color(0xFFFCF8F0), // خلفية الشاشة
        child: Column(
          children: [
            // العنوان "About App"
            Container(
              width: 360,
              height: 800,
              child: Column(
                children: [
                  SizedBox(height: 30),
                  Text(
                    'About App',
                    style: TextStyle(
                      fontFamily: 'Volkhov',
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF003B99),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  // Chevron
                  Container(width: 8, height: 15, color: Color(0xFF003B99)),
                  SizedBox(height: 20),
                  // معلومات عن التطبيق
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'FutureGate App is your smart platform that helps you check your exam results and explore the universities available to you quickly and easily. Instead of searching manually and waiting for long periods, the app allows you to enter your seat number, view your results, and compare universities you can apply to, with complete details about each institution and its programs.',
                      style: TextStyle(
                        fontFamily: 'Volkhov',
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        color: Color(0xFFEBC069),
                        height: 1.5,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  SizedBox(height: 20),
                  // Key Features title
                  Text(
                    'Key Features:',
                    style: TextStyle(
                      fontFamily: 'Volkhov',
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF003B99),
                    ),
                  ),
                  SizedBox(height: 20),
                  // قائمة الميزات
                  featureItem(
                    'Instant seat number entry to get results quickly',
                  ),
                  featureItem(
                    'Accurate display of available universities based on your results',
                  ),
                  featureItem(
                    'Detailed university information (location, programs, rankings)',
                  ),
                  featureItem(
                    'Smooth and user-friendly interface for an easy experience',
                  ),
                  featureItem(
                    'Access to a blog section with tips on choosing majors',
                  ),
                ],
              ),
            ),
            // الشريط السفلي
            Container(
              width: double.infinity,
              height: 68,
              decoration: BoxDecoration(
                color: Color(0xFFF8EDD8),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.home, color: Color(0xFF003B99), size: 30),
                  SizedBox(width: 20),
                  Icon(Icons.info, color: Color(0xFF003B99), size: 30),
                  SizedBox(width: 20),
                  Icon(Icons.settings, color: Color(0xFF003B99), size: 30),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget featureItem(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
      child: Row(
        children: [
          Icon(Icons.check_circle, color: Color(0xFFEBC069), size: 20),
          SizedBox(width: 10),
          Expanded(
            child: Text(
              text,
              style: TextStyle(
                fontFamily: 'Volkhov',
                fontSize: 12,
                fontWeight: FontWeight.normal,
                color: Color(0xFFEBC069),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(home: AboutAppScreen()));
}
