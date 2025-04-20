import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            // خلفية الصفحة
            Positioned.fill(child: Container(color: Color(0xFFFCF8F0))),
            // Rectangle 41926
            Positioned(
              left: 96,
              top: 365,
              child: Container(
                width: 167,
                height: 44,
                decoration: BoxDecoration(
                  color: Color(0xFFEBC069),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    'View Result',
                    style: TextStyle(
                      fontFamily: 'Volkhov',
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            // Seat Number Entry
            Positioned(
              left: 100,
              top: 211,
              child: Container(
                width: 210,
                height: 40,
                alignment: Alignment.center,
                child: Text(
                  'Enter Your Seat Number to Get Your Results',
                  style: TextStyle(
                    fontFamily: 'Volkhov',
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Color(0xFF003B99),
                  ),
                ),
              ),
            ),
            // Logo
            Positioned(
              left: 275,
              top: 50,
              child: Container(
                width: 55.49,
                height: 50,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/logo.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            // Bottom bar with seat number
            Positioned(
              left: 0,
              top: 731,
              child: Container(
                width: 360,
                height: 68,
                decoration: BoxDecoration(
                  color: Color(0xFFF8EDD8),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                ),
              ),
            ),
            // Navigation Icons
            Positioned(
              left: 155,
              top: 738,
              child: CircleAvatar(
                radius: 25,
                backgroundColor: Color(0xFFEBC069),
              ),
            ),
            Positioned(
              left: 12,
              top: 749,
              child: Icon(Icons.search, color: Color(0xFFEBC069)),
            ),
            // Other icons here...
          ],
        ),
      ),
    );
  }
}
