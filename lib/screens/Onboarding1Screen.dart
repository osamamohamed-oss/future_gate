import 'package:flutter/material.dart';

class Onboarding1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl, // دعم اللغة العربية
      child: Scaffold(
        appBar: AppBar(title: Text('Welcome to Onboarding 1')), // العنوان
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // صورة أو لوجو
                Center(
                  child: Image.asset(
                    'assets/images/logo.png', // تأكد من مسار الصورة
                    width: 200,
                    height: 150,
                  ),
                ),
                SizedBox(height: 20),

                // عنوان الصفحة
                Text(
                  'مرحبًا بك في أول صفحة Onboarding',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF003B99),
                  ),
                ),
                SizedBox(height: 10),

                // شرح أو تفاصيل الصفحة
                Text(
                  'هنا يمكنك تقديم بعض التفاصيل عن التطبيق أو الوظائف الأساسية التي يمكن للمستخدم استخدامها.',
                  style: TextStyle(fontSize: 16, color: Color(0xFF424242)),
                ),
                SizedBox(height: 20),

                // زر للانتقال إلى الصفحة التالية
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      // ضع هنا الكود للانتقال إلى الصفحة التالية
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Onboarding2Page(),
                        ),
                      );
                    },
                    child: Text('انتقل إلى الصفحة التالية'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Onboarding2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Onboarding 2')),
      body: Center(child: Text('هذه صفحة Onboarding 2')),
    );
  }
}
