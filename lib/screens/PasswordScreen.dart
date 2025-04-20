import 'package:flutter/material.dart';

class ResetPasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // خلفية الصفحة
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(color: Colors.white),
          ),
          // اللوجو
          Positioned(
            top: 160,
            left: 127,
            child: Image.asset(
              'assets/images/image-removebg-preview.png',
              width: 106,
              height: 95.52,
            ),
          ),
          // النص FutureGate
          Positioned(
            top: 252,
            left: 110,
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
          // حقل كلمة المرور الجديدة
          Positioned(
            top: 363,
            left: 30,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'New Password',
                  style: TextStyle(
                    fontFamily: 'Volkhov',
                    fontSize: 15,
                    color: Color(0xFF535353),
                  ),
                ),
                SizedBox(height: 5),
                Container(
                  width: 300,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Color(0xFF757575)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        blurRadius: 5,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  '********',
                  style: TextStyle(
                    fontFamily: 'Volkhov',
                    fontSize: 14,
                    color: Color(0xFF7F8589).withOpacity(0.6),
                  ),
                ),
              ],
            ),
          ),
          // حقل تأكيد كلمة المرور
          Positioned(
            top: 451,
            left: 30,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Confirm Password',
                  style: TextStyle(
                    fontFamily: 'Volkhov',
                    fontSize: 15,
                    color: Color(0xFF535353),
                  ),
                ),
                SizedBox(height: 5),
                Container(
                  width: 300,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Color(0xFF757575)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        blurRadius: 5,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  '********',
                  style: TextStyle(
                    fontFamily: 'Volkhov',
                    fontSize: 14,
                    color: Color(0xFF7F8589).withOpacity(0.6),
                  ),
                ),
              ],
            ),
          ),
          // زر إعادة تعيين كلمة المرور
          Positioned(
            top: 530,
            left: 30,
            child: ElevatedButton(
              onPressed: () {
                // إضافة منطق إعادة تعيين كلمة المرور هنا
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xFFEBC069),
                onPrimary: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.symmetric(horizontal: 100, vertical: 15),
              ),
              child: Text('Reset Password', style: TextStyle(fontSize: 16)),
            ),
          ),
          // الـ Nav Bar
          Positioned(
            top: 7,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                  child: Text(
                    'Time',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                      color: Color(0xFF535353),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                  child: Icon(
                    Icons.battery_full,
                    color: Color(0xFF535353),
                    size: 20,
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                  child: Icon(Icons.wifi, color: Color(0xFF535353), size: 20),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
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

void main() {
  runApp(
    MaterialApp(debugShowCheckedModeBanner: false, home: ResetPasswordPage()),
  );
}
