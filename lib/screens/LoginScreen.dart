import 'package:flutter/material.dart';
import 'package:future_gate/services/api_service.dart'; // استيراد ApiService

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: LoginPage(), debugShowCheckedModeBanner: false);
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController seatNumberController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  String errorMessage = '';

  void _login() async {
    final seatNumber = seatNumberController.text;
    final password = passwordController.text;

    if (seatNumber.isEmpty || password.isEmpty) {
      setState(() {
        errorMessage = 'من فضلك، أدخل جميع البيانات';
      });
      return;
    }

    final response = await ApiService.login(seatNumber, password);

    if (response.containsKey('error')) {
      setState(() {
        errorMessage = response['error'];
      });
    } else {
      // توجيه المستخدم إلى الصفحة الرئيسية بعد تسجيل الدخول الناجح
      setState(() {
        errorMessage = 'تم تسجيل الدخول بنجاح!';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl, // دعم اللغة العربية
      child: Scaffold(
        body: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Stack(
              children: [
                Positioned.fill(
                  child: Container(color: Colors.white),
                ), // خلفية بيضاء
                // الشعار
                Positioned(
                  top: 77,
                  left: 83,
                  child: Image.asset(
                    'assets/images/logo.png',
                    width: 195,
                    height: 143,
                  ),
                ),

                // العنوان
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

                // إدخال رقم الجلوس
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
                          controller: seatNumberController,
                          decoration: InputDecoration(
                            hintText: 'أدخل رقم الجلوس',
                            contentPadding: EdgeInsets.all(12),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // إدخال كلمة المرور
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
                          controller: passwordController,
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: 'أدخل كلمة المرور',
                            contentPadding: EdgeInsets.all(12),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // عرض رسالة الخطأ أو النجاح
                if (errorMessage.isNotEmpty)
                  Positioned(
                    top: 500,
                    left: 30,
                    child: Text(
                      errorMessage,
                      style: TextStyle(
                        color:
                            errorMessage.contains('خطأ')
                                ? Colors.red
                                : Colors.green,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                // زر تسجيل الدخول
                Positioned(
                  top: 486,
                  left: 30,
                  child: ElevatedButton(
                    onPressed: _login,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      padding: EdgeInsets.all(0),
                      elevation: 5,
                      shadowColor: Colors.black.withOpacity(0.1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
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

                // روابط لتسجيل الدخول عبر Google و Facebook
                Positioned(
                  top: 587,
                  left: 144,
                  child: IconButton(
                    onPressed: () {
                      // تسجيل الدخول بـ Google
                    },
                    icon: Image.asset('assets/icons/google.png'),
                    iconSize: 30,
                  ),
                ),
                Positioned(
                  top: 587,
                  left: 198,
                  child: IconButton(
                    onPressed: () {
                      // تسجيل الدخول بـ Facebook
                    },
                    icon: Image.asset('assets/icons/facebook.png'),
                    iconSize: 30,
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
