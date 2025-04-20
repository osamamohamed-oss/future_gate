import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: LoginPage());
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Container for background
          Positioned.fill(child: Container(color: Colors.white)),

          // Logo
          Positioned(
            top: 77,
            left: 83,
            child: Image.asset(
              'assets/images/logo.png', // تأكد من إضافة الصورة في مجلد "assets/images/"
              width: 195,
              height: 143,
            ),
          ),

          // Title
          Positioned(
            top: 185,
            left: 83,
            child: Text(
              'FutureGate',
              style: TextStyle(
                fontFamily: 'Volkhov',
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Color(0xFF003B99),
              ),
            ),
          ),

          // Seat Number Input
          Positioned(
            top: 276,
            left: 30,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'رقم الجلوس',
                  style: TextStyle(
                    fontFamily: 'Volkhov',
                    fontSize: 14,
                    color: Color(0xFF7F8589).withOpacity(0.6),
                  ),
                ),
                SizedBox(height: 8),
                Container(
                  width: 300,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.8),
                    border: Border.all(color: Color(0xFF757575)),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'أدخل رقم الجلوس',
                      contentPadding: EdgeInsets.all(12),
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Password Input
          Positioned(
            top: 357,
            left: 30,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'كلمة المرور',
                  style: TextStyle(
                    fontFamily: 'Volkhov',
                    fontSize: 15,
                    color: Color(0xFF535353),
                  ),
                ),
                SizedBox(height: 8),
                Container(
                  width: 300,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.8),
                    border: Border.all(color: Color(0xFF757575)),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'أدخل كلمة المرور',
                      contentPadding: EdgeInsets.all(12),
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Login Button
          Positioned(
            top: 486,
            left: 30,
            child: ElevatedButton(
              onPressed: () {
                // اضغط لتسجيل الدخول
              },
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    Colors
                        .transparent, // استخدام backgroundColor بدلاً من primary لجعل الخلفية شفافة
                padding: EdgeInsets.all(0),
                side: BorderSide.none,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                shadowColor: Colors.black.withOpacity(0.1),
                elevation: 5,
              ),
              child: Container(
                width: 300,
                height: 50,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFFF8EDD8), Color(0xFFEBC069)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    'تسجيل الدخول',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ),

          // Forget Password Link
          Positioned(
            top: 430,
            left: 217,
            child: TextButton(
              onPressed: () {
                // اضغط لاستعادة كلمة المرور
              },
              child: Text(
                'نسيت كلمة المرور؟',
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFFEBC069),
                  decoration: TextDecoration.underline, // إضافة الخط تحت النص
                ),
              ),
            ),
          ),

          // Sign Up Text
          Positioned(
            top: 649,
            left: 85,
            child: Text(
              'ليس لديك حساب؟ انشئ حساب الآن',
              style: TextStyle(
                fontFamily: 'Volkhov',
                fontSize: 14,
                color: Color(0xFF424242),
              ),
            ),
          ),

          // OR Text
          Positioned(
            top: 556,
            left: 176,
            child: Text(
              'أو',
              style: TextStyle(
                fontFamily: 'Volkhov',
                fontSize: 16,
                color: Color(0xFF424242),
              ),
            ),
          ),

          // Google and Facebook Icons
          Positioned(
            top: 587,
            left: 144,
            child: IconButton(
              onPressed: () {
                // اضغط لتسجيل الدخول عبر Google
              },
              icon: Icon(Icons.golf_course), // ضع أيقونة Google هنا
            ),
          ),
          Positioned(
            top: 587,
            left: 198,
            child: IconButton(
              onPressed: () {
                // اضغط لتسجيل الدخول عبر Facebook
              },
              icon: Icon(Icons.facebook), // ضع أيقونة Facebook هنا
            ),
          ),
        ],
      ),
    );
  }
}
