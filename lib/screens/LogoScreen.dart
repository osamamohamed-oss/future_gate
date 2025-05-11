import 'dart:async';
import 'package:flutter/material.dart';

class LogoScreen extends StatefulWidget {
  @override
  _LogoScreenState createState() => _LogoScreenState();
}

class _LogoScreenState extends State<LogoScreen> {
  @override
  void initState() {
    super.initState();

    // استخدام addPostFrameCallback للتأكد من أن الكود ينفذ بعد اكتمال البناء
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Timer(const Duration(seconds: 3), () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder:
                (context) =>
                    Onboarding1Screen(), // استبدل Onboarding1Screen بالشاشة الفعلية
          ),
        );
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // الخلفية المتدرجة
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
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
          Align(
            alignment: Alignment(0, -0.3),
            child: Image.asset(
              'assets/images/Logo.png', // تأكد من صحة اسم الصورة
              width: 188,
              height: 143,
            ),
          ),

          // النص "FutureGate"
          const Align(
            alignment: Alignment(0, -0.1),
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

          // شريط التنقل في الأعلى (تصميم ثابت)
          SafeArea(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    '12:34', // ثابت حسب التصميم
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                      color: Color(0xFF535353),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Row(
                    children: [
                      Icon(Icons.wifi, size: 16, color: Color(0xFF535353)),
                      SizedBox(width: 10),
                      Icon(
                        Icons.signal_cellular_4_bar,
                        size: 16,
                        color: Color(0xFF535353),
                      ),
                      SizedBox(width: 10),
                      BatteryIcon(),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // واجهة الهاتف في الأسفل (أزرار تنقل ثابتة)
          const Positioned(
            left: 0,
            right: 0,
            bottom: 10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.arrow_back, color: Color(0xFF003B99)),
                Icon(Icons.home, color: Color(0xFF003B99)),
                Icon(Icons.more_vert, color: Color(0xFF003B99)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Onboarding1Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Onboarding 1")),
      body: Center(child: Text("Welcome to Onboarding 1")),
    );
  }
}

class BatteryIcon extends StatelessWidget {
  const BatteryIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 25,
      height: 12,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2),
        border: Border.all(color: const Color(0xFF535353), width: 1),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 1,
            top: 2,
            child: Container(
              width: 20,
              height: 8,
              color: const Color(0xFF535353),
            ),
          ),
        ],
      ),
    );
  }
}
