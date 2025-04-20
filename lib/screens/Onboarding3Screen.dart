import 'package:flutter/material.dart';

class Onboarding3Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background
          Positioned.fill(child: Container(color: Colors.white)),

          // Image
          Positioned(
            top: 144,
            left: 28,
            child: Container(
              width: 302,
              height: 389,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/image.png'), // ضع الصورة هنا
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),

          // Navigation Dots
          Positioned(
            top: 543,
            left: 152,
            child: Row(
              children: [
                Container(
                  width: 12,
                  height: 12,
                  decoration: BoxDecoration(
                    color: Color(0xFFDEDBDB),
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(width: 9),
                Container(
                  width: 12,
                  height: 12,
                  decoration: BoxDecoration(
                    color: Color(0xFFDEDBDB),
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(width: 9),
                Container(
                  width: 12,
                  height: 12,
                  decoration: BoxDecoration(
                    color: Color(0xFFEBC069),
                    shape: BoxShape.circle,
                  ),
                ),
              ],
            ),
          ),

          // Title Text
          Positioned(
            top: 554,
            left: 65,
            child: Container(
              width: 230,
              child: Center(
                child: Text(
                  'Explore universities and apply easily',
                  style: TextStyle(
                    fontFamily: 'Volkhov',
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    color: Color(0xFF003B99),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),

          // Get Started Button
          Positioned(
            top: 639,
            left: 80,
            child: GestureDetector(
              onTap: () {
                // Navigate to the next screen
              },
              child: Container(
                width: 200,
                height: 44,
                decoration: BoxDecoration(
                  color: Color(0xFFEBC069),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    'Get Started',
                    style: TextStyle(
                      fontFamily: 'Volkhov',
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),

          // Nav Bar (Time, Battery, WiFi, etc.)
          Positioned(
            top: 7,
            left: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 56,
                  height: 23,
                  alignment: Alignment.center,
                  child: Text(
                    '12:34',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                      color: Color(0xFF535353),
                    ),
                  ),
                ),
                Container(width: 68, height: 16, color: Colors.transparent),
                Container(width: 25, height: 12, color: Color(0xFF535353)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
