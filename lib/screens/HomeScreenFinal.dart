import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.blueAccent,
        elevation: 4, // إضافة ظل خفيف للشريط العلوي
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // عنوان الترحيب
            Text(
              'Welcome to FutureGate',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 20),

            // معلومات عن التطبيق
            Text(
              'Here you can explore university options, check seat availability, and get your results.',
              style: TextStyle(fontSize: 16, color: Colors.grey[700]),
            ),
            SizedBox(height: 30),

            // زر التنقل للصفحة التالية أو قسم جديد (النتائج)
            ElevatedButton(
              onPressed: () {
                // اضغط هنا للانتقال إلى شاشة أخرى
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultsScreen(),
                  ), // مثال: انتقل إلى شاشة النتائج
                );
              },
              child: Text('Go to Results'),
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    Colors
                        .blueAccent, // استخدام backgroundColor بدلاً من primary
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                textStyle: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(height: 20),

            // زر التنقل إلى شاشة التنسيق
            ElevatedButton(
              onPressed: () {
                // انتقل إلى شاشة التنسيق
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TansiqScreen(),
                  ), // مثال: انتقل إلى شاشة التنسيق
                );
              },
              child: Text('Go to Tansiq'),
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    Colors
                        .greenAccent, // استخدام backgroundColor بدلاً من primary
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                textStyle: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(height: 20),

            // زر إضافي يمكن إضافته في المستقبل إذا كان هناك حاجة
            ElevatedButton(
              onPressed: () {
                // وظيفة أخرى قد يتم إضافتها
              },
              child: Text('Another Action'),
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    Colors
                        .purpleAccent, // استخدام backgroundColor بدلاً من primary
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                textStyle: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ResultsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Results'),
        backgroundColor: Colors.blueAccent,
        elevation: 4, // إضافة ظل خفيف للشريط العلوي
      ),
      body: Center(child: Text('This is the results screen')),
    );
  }
}

class TansiqScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tansiq'),
        backgroundColor: Colors.greenAccent,
        elevation: 4, // إضافة ظل خفيف للشريط العلوي
      ),
      body: Center(child: Text('This is the Tansiq screen')),
    );
  }
}

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: HomeScreen()));
}
