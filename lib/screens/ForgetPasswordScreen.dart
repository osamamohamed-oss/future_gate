import 'package:flutter/material.dart';

class ForgetPasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            // خلفية الشاشة
            Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.white,
            ),

            // الشريط العلوي
            Positioned(
              top: 7,
              left: 0,
              right: 0,
              child: Container(
                height: 24,
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '12:30',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                        color: Color(0xFF535353),
                      ),
                    ),
                    Row(
                      children: [
                        Icon(Icons.wifi, color: Color(0xFF535353), size: 16),
                        SizedBox(width: 10),
                        Icon(
                          Icons.battery_full,
                          color: Color(0xFF535353),
                          size: 16,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            // الشعار
            Positioned(
              top: 160,
              left: 110,
              child: Image.asset(
                'assets/images/logo.png', // تأكد من المسار الصحيح للشعار هنا
                width: 106,
                height: 95.52,
              ),
            ),

            // اسم التطبيق
            Positioned(
              top: 252,
              left: 110,
              child: Text(
                'FutureGate',
                style: TextStyle(
                  fontFamily: 'Volkhov',
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                  color: Color(0xFF003B99),
                ),
              ),
            ),

            // نص "نسيت كلمة المرور"
            Positioned(
              top: 71,
              left: 111,
              child: Text(
                'Forget Password',
                style: TextStyle(
                  fontFamily: 'Volkhov',
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                  color: Color(0xFF003B99),
                ),
              ),
            ),

            // حقل البريد الإلكتروني
            Positioned(
              top: 421,
              left: 30,
              child: Container(
                width: 300,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Color(0xFF757575)),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'example@email.com',
                    hintStyle: TextStyle(
                      fontFamily: 'Volkhov',
                      fontSize: 14,
                      color: Color(0xFF7F8589).withOpacity(0.6),
                    ),
                    prefixIcon: Icon(Icons.email, color: Color(0xFF535353)),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 15,
                      horizontal: 10,
                    ),
                  ),
                ),
              ),
            ),

            // زر التأكيد
            Positioned(
              top: 544,
              left: 30,
              child: ElevatedButton(
                onPressed: () {
                  // إضافة وظيفة الزر هنا (مثلاً: التحقق من البريد الإلكتروني)
                  String email =
                      ''; // أضف الكود لاستلام البريد الإلكتروني من الحقل
                  if (email.isEmpty) {
                    // إظهار رسالة خطأ أو التعامل مع الحالة
                  } else {
                    // الانتقال إلى شاشة أخرى أو إرسال البريد
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(
                    0xFFEBC069,
                  ), // استخدم backgroundColor بدلاً من primary
                  minimumSize: Size(300, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  'Confirm',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
