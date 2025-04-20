import 'package:flutter/material.dart';

class Onboarding1Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Color
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.white,
          ),
          // Frame and Auto layout for content
          Positioned(
            left: 65,
            top: 554,
            child: Container(
              width: 230,
              height: 40,
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'Enter your seat number',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Volkhov',
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Color(0xFF003B99),
                ),
              ),
            ),
          ),
          // Next Button
          Positioned(
            left: 80,
            top: 639,
            child: Container(
              width: 200,
              height: 44,
              decoration: BoxDecoration(
                color: Color(0xFFEBC069),
                borderRadius: BorderRadius.circular(10),
              ),
              alignment: Alignment.center,
              child: Text(
                'Next',
                style: TextStyle(
                  fontFamily: 'Volkhov',
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          // Skip Text
          Positioned(
            left: 308,
            top: 80,
            child: Text(
              'Skip',
              style: TextStyle(
                fontFamily: 'Volkhov',
                fontWeight: FontWeight.normal,
                fontSize: 15,
                color: Color(0xFFEBC069),
              ),
            ),
          ),
          // Image
          Positioned(
            left: 28,
            top: 144,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                'assets/images/image.png', // Adjust the path as needed
                width: 302,
                height: 389,
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Navigation Bar
          Positioned(
            left: 0,
            top: 7,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Time
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    '12:00 PM', // This can be dynamic if needed
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                      color: Color(0xFF535353),
                    ),
                  ),
                ),
                // Battery
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Icon(
                    Icons.battery_charging_full,
                    color: Color(0xFF535353),
                    size: 20,
                  ),
                ),
                // Wifi
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Icon(Icons.wifi, color: Color(0xFF535353), size: 20),
                ),
                // Signal
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Icon(
                    Icons.signal_cellular_4_bar,
                    color: Color(0xFF535353),
                    size: 20,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
