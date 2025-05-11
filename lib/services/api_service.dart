import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  static const String _baseUrl = 'http://127.0.0.1:8000'; // رابط السيرفر المحلي

  // مثال لطريقة login (تسجّل دخول)
  static Future<Map<String, dynamic>> login(
    String email,
    String password,
  ) async {
    final Uri url = Uri.parse('$_baseUrl/login');
    try {
      final response = await http.post(
        url,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({'email': email, 'password': password}),
      );

      // فحص حالة الاستجابة (Status code)
      if (response.statusCode == 200) {
        // إذا كانت الاستجابة ناجحة (200)، نقوم بإرجاع الـ JSON المحول
        return jsonDecode(response.body);
      } else {
        // إذا كانت هناك مشكلة في الاستجابة، نرسل رسالة خطأ
        return {'error': 'فشل في تسجيل الدخول: ${response.statusCode}'};
      }
    } catch (e) {
      // التعامل مع الأخطاء في حالة حدوث استثناءات
      return {'error': 'خطأ في الاتصال: $e'};
    }
  }

  // مثال لطريقة get بيانات عامة (مثل قائمة الجامعات)
  static Future<List<dynamic>> fetchUniversities() async {
    final Uri url = Uri.parse('$_baseUrl/universities');
    try {
      final response = await http.get(url);

      // فحص حالة الاستجابة
      if (response.statusCode == 200) {
        // إذا كانت الاستجابة ناجحة (200)، نقوم بتحويل الـ JSON إلى قائمة
        return jsonDecode(response.body);
      } else {
        // إذا كانت هناك مشكلة في الاستجابة، نرسل رسالة خطأ
        throw Exception('فشل في تحميل الجامعات: ${response.statusCode}');
      }
    } catch (e) {
      // التعامل مع الأخطاء في حالة حدوث استثناءات
      throw Exception('خطأ في الاتصال بالـ API: $e');
    }
  }
}
