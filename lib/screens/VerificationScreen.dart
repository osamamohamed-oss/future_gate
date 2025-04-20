import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: VerificationScreen());
  }
}

class VerificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            left: 110,
            top: 160,
            child: Image.asset(
              'assets/image-removebg-preview.png', // مكان الصورة
              width: 106,
              height: 95.52,
            ),
          ),
          Positioned(
            left: 110,
            top: 252,
            child: Text(
              'FutureGate',
              style: TextStyle(
                fontFamily: 'Volkhov',
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: Color(0xFF003B99),
              ),
            ),
          ),
          Positioned(
            left: 65,
            top: 317,
            child: Container(
              width: 230,
              height: 40,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFFF8EDD8),
                    Color(0xFFE3C280),
                    Color(0xFFEBC069),
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  'Verify Your Email',
                  style: TextStyle(
                    fontFamily: 'Volkhov',
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Color(0xFF003B99),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 75,
            top: 609,
            child: GestureDetector(
              onTap: () {
                // عمل الوظيفة الخاصة بإعادة إرسال الكود
              },
              child: Text(
                'Resend the code',
                style: TextStyle(
                  fontFamily: 'Volkhov',
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Color(0xFF003B99),
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ),
          Positioned(
            left: 47,
            top: 433,
            child: Container(
              width: 280,
              height: 75,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildCodeSquare(),
                  _buildCodeSquare(),
                  _buildCodeSquare(),
                  _buildCodeSquare(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCodeSquare() {
    return Container(
      width: 50,
      height: 55,
      decoration: BoxDecoration(
        color: Color(0xFFE3C280).withOpacity(0.2),
        border: Border.all(color: Color(0xFFEBC069)),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Text(
          '',
          style: TextStyle(
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: Color(0xFF8B868C),
          ),
        ),
      ),
    );
  }
}
