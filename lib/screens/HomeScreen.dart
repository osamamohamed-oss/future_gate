import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Color(0xFF003B99),
      ),
      body: Stack(
        children: [
          // الخلفية البيضاء
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.white,
          ),

          // اللوجو
          Positioned(
            left: 123,
            top: 49,
            child: Image.asset(
              'assets/images/image-removebg-preview.png',
              width: 55.49,
              height: 50,
            ),
          ),

          // اسم المشروع
          Positioned(
            left: 172,
            top: 62,
            child: Text(
              'FutureGate',
              style: TextStyle(
                fontFamily: 'Volkhov',
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Color(0xFF003B99),
              ),
            ),
          ),

          // مستطيل 1
          Positioned(
            left: 25,
            top: 195,
            child: Container(
              width: 310,
              height: 147,
              decoration: BoxDecoration(
                color: Color(0xFFF8EDD8),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),

          // مستطيل 2
          Positioned(
            left: 25,
            top: 394,
            child: Container(
              width: 310,
              height: 147,
              decoration: BoxDecoration(
                color: Color(0xFFF8EDD8),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),

          // زر "ابدأ"
          Positioned(
            left: 80,
            top: 280,
            child: GestureDetector(
              onTap: () {
                // يمكنك إضافة دالة للتنقل أو أي حدث آخر
                print('Get Started tapped');
              },
              child: Container(
                width: 200,
                height: 40,
                decoration: BoxDecoration(
                  color: Color(0xFFEBC069),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    'Get Started',
                    style: TextStyle(
                      fontFamily: 'Volkhov',
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),

          // مستطيل أسفل الصفحة
          Positioned(
            left: 0,
            top: 731,
            child: Container(
              width: 360,
              height: 68,
              decoration: BoxDecoration(
                color: Color(0xFFF8EDD8),
                borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
              ),
            ),
          ),

          // دائرة Seat Num Nav
          Positioned(
            left: 155,
            top: 738,
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFFEBC069),
              ),
            ),
          ),

          // نص "Cairo University" مع مستطيل
          Positioned(
            left: 26,
            top: 604,
            child: Container(
              width: 139,
              height: 49,
              decoration: BoxDecoration(
                color: Color(0xFFEBC069),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  'Cairo University',
                  style: TextStyle(
                    fontFamily: 'Volkhov',
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),

          // نص "Available Universities"
          Positioned(
            left: 19,
            top: 572,
            child: Text(
              'Available Universities',
              style: TextStyle(
                fontFamily: 'Volkhov',
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Color(0xFF003B99),
              ),
            ),
          ),

          // نص "Latest Blog Articles"
          Positioned(
            left: 19,
            top: 365,
            child: Text(
              'Latest Blog Articles',
              style: TextStyle(
                fontFamily: 'Volkhov',
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Color(0xFF003B99),
              ),
            ),
          ),

          // صورة "image"
          Positioned(
            left: 221,
            top: 394,
            child: Container(
              width: 114,
              height: 147,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/image.png'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),

          // مربع الإشعارات
          Positioned(
            left: 153,
            top: 547,
            child: Row(
              children: [
                Container(
                  width: 12,
                  height: 12,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFFEBC069),
                  ),
                ),
                SizedBox(width: 9),
                Container(
                  width: 12,
                  height: 12,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFFDEDBDB),
                  ),
                ),
                SizedBox(width: 9),
                Container(
                  width: 12,
                  height: 12,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFFDEDBDB),
                  ),
                ),
              ],
            ),
          ),

          // المزيد من المحتويات و التفاصيل الأخرى يمكن إضافتها بنفس الطريقة.
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(home: HomeScreen()));
}
