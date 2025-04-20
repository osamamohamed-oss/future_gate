import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: ContactUsScreen());
  }
}

class ContactUsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Container
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Color(0xFFFCF8F0), // Light background color
          ),

          // Chevron icon
          Positioned(
            top: 74,
            left: 16,
            child: Container(width: 8, height: 15, color: Color(0xFF003B99)),
          ),

          // Support text
          Positioned(
            top: 143,
            left: 85,
            child: Text(
              'Get in Touch for Support',
              style: TextStyle(
                fontFamily: 'Volkhov',
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: Color(0xFF9E9E9E),
              ),
            ),
          ),

          // Logo
          Positioned(
            top: 50,
            right: 16,
            child: Image.asset(
              'assets/images/logo.png', // Update this with the correct logo path
              width: 55.49,
              height: 50,
            ),
          ),

          // Contact Our Support Team title
          Positioned(
            top: 189,
            left: 12,
            child: Text(
              'Contact Our Support Team',
              style: TextStyle(
                fontFamily: 'Volkhov',
                fontWeight: FontWeight.w700,
                fontSize: 16,
                color: Color(0xFF003B99),
              ),
            ),
          ),

          // Contact Information
          Positioned(
            top: 287,
            left: 14,
            child: Text(
              'Support Email: support@website.com',
              style: TextStyle(
                fontFamily: 'Volkhov',
                fontWeight: FontWeight.w700,
                fontSize: 16,
                color: Color(0xFF003B99),
              ),
            ),
          ),

          // Location
          Positioned(
            top: 419,
            left: 14,
            child: Text(
              'Location: Some Street, City',
              style: TextStyle(
                fontFamily: 'Volkhov',
                fontWeight: FontWeight.w700,
                fontSize: 16,
                color: Color(0xFF003B99),
              ),
            ),
          ),

          // Bottom Rectangle with text
          Positioned(
            bottom: 0,
            left: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
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

          // Navigation bar
          Positioned(
            top: 7,
            left: 0,
            right: 0,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '12:00',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                      color: Color(0xFF535353),
                    ),
                  ),
                  Icon(Icons.battery_full, size: 15, color: Color(0xFF535353)),
                  Icon(
                    Icons.signal_wifi_4_bar,
                    size: 15,
                    color: Color(0xFF535353),
                  ),
                  Icon(
                    Icons.signal_cellular_4_bar,
                    size: 15,
                    color: Color(0xFF535353),
                  ),
                ],
              ),
            ),
          ),

          // Results
          Positioned(
            bottom: 13,
            left: 12,
            child: Text(
              'Results',
              style: TextStyle(
                fontFamily: 'Volkhov',
                fontWeight: FontWeight.w700,
                fontSize: 10,
                color: Color(0xFFEBC069),
              ),
            ),
          ),

          // University
          Positioned(
            bottom: 13,
            right: 12,
            child: Text(
              'University',
              style: TextStyle(
                fontFamily: 'Volkhov',
                fontWeight: FontWeight.w700,
                fontSize: 10,
                color: Color(0xFFEBC069),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
