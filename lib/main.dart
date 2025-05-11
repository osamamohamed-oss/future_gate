import 'package:flutter/material.dart';
import 'package:future_gate/routes/route_names.dart'; // تأكد من المسار الصحيح
import 'routes/router.dart'; // تأكد من المسار الصحيح

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Future Gate',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: RouteNames.logo, // تحديد الشاشة الأولى عند بدء التطبيق
      routes: AppRoutes.routes, // تحديد جميع المسارات (الشاشات) المتاحة
    );
  }
}
