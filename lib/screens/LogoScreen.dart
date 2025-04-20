import 'package:flutter/material.dart';

class LogoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // الخلفية المتدرجة
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFFF8EDD8),
                  Color(0xFFE3C280),
                  Color(0xFFEBC069),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),

          // الشعار
          Positioned(
            left: 86,
            top: 328,
            child: Image.asset(
              'assets/images/logo.png',
              width: 188,
              height: 143,
            ), // تأكد من مسار الشعار
          ),

          // النص "FutureGate"
          Positioned(
            left: 86,
            top: 436,
            child: Text(
              'FutureGate',
              style: TextStyle(
                fontFamily: 'Volkhov',
                fontWeight: FontWeight.bold,
                fontSize: 32,
                color: Color(0xFF003B99),
              ),
            ),
          ),

          // شريط التنقل في الأعلى
          Positioned(
            top: 7,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // الوقت
                Padding(
                  padding: const EdgeInsets.only(left: 10),
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

                // الرموز (Wi-Fi، Cellular، Battery)
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Row(
                    children: [
                      // Wi-Fi
                      Icon(Icons.wifi, size: 16, color: Color(0xFF535353)),

                      // Cellular
                      SizedBox(width: 10),
                      Icon(
                        Icons.signal_cellular_4_bar,
                        size: 16,
                        color: Color(0xFF535353),
                      ),

                      // البطارية
                      SizedBox(width: 10),
                      Container(
                        width: 25,
                        height: 12,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          border: Border.all(
                            color: Color(0xFF535353),
                            width: 1,
                          ),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              left: 1,
                              top: 2,
                              child: Container(
                                width: 20,
                                height: 8,
                                color: Color(0xFF535353),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // واجهة الهاتف
          Positioned(
            left: 0,
            right: 0,
            bottom: 10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // زر الرجوع
                Icon(Icons.arrow_back, color: Color(0xFF003B99)),

                // زر الصفحة الرئيسية
                Icon(Icons.home, color: Color(0xFF003B99)),

                // زر الخيارات
                Icon(Icons.more_vert, color: Color(0xFF003B99)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
