import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Stack(
            children: [
              // Background color
              Container(
                width: double.infinity,
                height: 800,
                color: Color(0xFFFCF8F0),
              ),

              // Blog Title
              Positioned(
                top: 71,
                left: 162,
                child: Text(
                  "Blog",
                  style: TextStyle(
                    fontFamily: 'Volkhov',
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Color(0xFF003B99),
                  ),
                ),
              ),

              // Chevron
              Positioned(
                top: 74,
                left: 16,
                child: Container(
                  width: 8,
                  height: 15,
                  color: Color(0xFF003B99),
                ),
              ),

              // Rectangle 41928
              Positioned(
                top: 162,
                left: 25,
                child: Container(
                  width: 310,
                  height: 147,
                  decoration: BoxDecoration(
                    color: Color(0xFFF8EDD8),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Stack(
                    children: [
                      // Image
                      Positioned(
                        top: 0,
                        right: 0,
                        child: Container(
                          width: 114,
                          height: 147,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/image.png'),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                      // Title
                      Positioned(
                        top: 18,
                        left: 42,
                        child: Text(
                          "How to Choose the Right University Major?",
                          style: TextStyle(
                            fontFamily: 'Volkhov',
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Color(0xFF003B99),
                          ),
                        ),
                      ),
                      // Description
                      Positioned(
                        top: 60,
                        left: 42,
                        child: Text(
                          "A complete guide to making the best decision based on your interests and job market trends.",
                          style: TextStyle(
                            fontFamily: 'Volkhov',
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: Color(0xFF9E9E9E),
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // Rectangle 41929 (similar to Rectangle 41928)
              // You can repeat the same structure as above for other elements
            ],
          ),
        ),
      ),
    );
  }
}
