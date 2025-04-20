
import 'package:flutter/material.dart';

class Onboarding2Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background
          Positioned.fill(
            child: Container(
              color: Colors.white,
            ),
          ),
          
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
          
          // Navigation dots
          Positioned(
            top: 543,
            left: 152,
            child: Row(
              children: [
                Container(
                  width: 12,
                  height: 12,
                  decoration: BoxDecoration(
                    color: Color(0xFFEBC069),
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
                    color: Color(0xFFDEDBDB),
                    shape: BoxShape.circle,
                  ),
                ),
              ],
            ),
          ),
          
          // Title text
          Positioned(
            top: 554,
            left: 65,
            child: Container(
              width: 230,
              child: Center(
                child: Text(
                  'View your results and available options',
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
          
          // Next Button
          Positioned(
            top: 639,
            left: 80,
            child: GestureDetector(
              onTap: () {
                // Navigate to next screen
              },
              child: Container(
                width: 200,
                height:
