import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: ChangePasswordScreen());
  }
}

class ChangePasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // Logo Image
          Positioned(
            left: 110,
            top: 160,
            child: Image.asset(
              'assets/image-removebg-preview.png', // استخدم الصورة المناسبة
              width: 106,
              height: 95.52,
            ),
          ),
          // "FutureGate" Text
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
          // "Verification" Text
          Positioned(
            left: 128,
            top: 71,
            child: Text(
              'Verification',
              style: TextStyle(
                fontFamily: 'Volkhov',
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Color(0xFF003B99),
              ),
            ),
          ),
          // Navigation Bar (Time & Icons)
          Positioned(
            left: 0,
            top: 7,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '12:45',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Color(0xFF535353),
                  ),
                ),
                Row(
                  children: [
                    Icon(Icons.wifi, color: Color(0xFF535353)),
                    Icon(Icons.signal_cellular_4_bar, color: Color(0xFF535353)),
                    Icon(Icons.battery_full, color: Color(0xFF535353)),
                  ],
                ),
              ],
            ),
          ),
          // "Change Password" Button
          Positioned(
            left: 65,
            top: 396,
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
                  'Change Password',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          // "Your email has been successfully verified" Text
          Positioned(
            left: 67,
            top: 436,
            child: Text(
              'Your email has been successfully verified',
              style: TextStyle(
                fontFamily: 'Volkhov',
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: Color(0xFF7F8589).withOpacity(0.6),
              ),
            ),
          ),
          // Resend the Code Link
          Positioned(
            left: 75,
            top: 609,
            child: GestureDetector(
              onTap: () {
                // هنا يمكن إضافة الوظيفة الخاصة بإعادة إرسال الكود
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
          // "Email Verified" Text
          Positioned(
            left: 65,
            top: 544,
            child: Container(
              width: 300,
              height: 50,
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
        ],
      ),
    );
  }
}
