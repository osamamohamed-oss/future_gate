import 'package:flutter/material.dart';

class University2_Screen extends StatelessWidget {
  const University2_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFCF8F0),
      body: SingleChildScrollView(
        child: SizedBox(
          height: 1000, // ممكن تزود حسب المحتوى الفعلي
          width: double.infinity,
          child: Stack(
            children: [
              // عنوان "University"
              Positioned(
                top: 71,
                left: 137,
                child: Text(
                  "University",
                  style: TextStyle(
                    fontFamily: 'Volkhov',
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    color: Color(0xFF003B99),
                  ),
                ),
              ),

              // زر الرجوع (Chevron)
              Positioned(
                top: 74,
                left: 16,
                child: Icon(
                  Icons.arrow_back_ios,
                  size: 15,
                  color: Color(0xFF003B99),
                ),
              ),

              // اللوجو
              Positioned(
                top: 50,
                left: 275,
                child: Image.asset(
                  'assets/images/image-removebg-preview.png',
                  width: 55.49,
                  height: 50,
                  fit: BoxFit.contain,
                ),
              ),

              // الصورة الرئيسية
              Positioned(
                top: 614,
                left: 29,
                child: Image.asset(
                  'assets/images/OIP.jpg',
                  width: 306,
                  height: 245.2,
                  fit: BoxFit.cover,
                ),
              ),

              // اسم الجامعة داخل كارد
              Positioned(
                top: 112,
                left: 5,
                child: Container(
                  width: 349.96,
                  height: 495,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.8),
                    border: Border.all(color: Color(0xFFEBC069), width: 0.7),
                  ),
                ),
              ),

              // مثال على إدخال البيانات داخل الكارد
              Positioned(
                top: 170.45,
                left: 21.6,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Name",
                      style: TextStyle(
                        fontFamily: 'Rubik',
                        fontWeight: FontWeight.w500,
                        fontSize: 13,
                        color: Color(0xFF003B99),
                      ),
                    ),
                    const SizedBox(height: 5),
                    Container(
                      width: 308.83,
                      height: 31.03,
                      decoration: BoxDecoration(
                        color: Color(0x66EBC069),
                        borderRadius: BorderRadius.circular(8.1),
                      ),
                      padding: const EdgeInsets.only(left: 10, top: 7),
                      child: Text(
                        'University Name Here',
                        style: TextStyle(
                          fontSize: 13,
                          fontFamily: 'Rubik',
                          color: Color(0xFF9E9E9E),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // باقي الحقول زي: Address, Email, Phone, Ranking... (بنفس الشكل)
              // تقدر تنسخ نفس البلوك اللي فوق وتغير القيم والتوب والـ label

              // العنوان الجغرافي + الأيقونة
              Positioned(
                top: 864.14,
                left: 29,
                child: Row(
                  children: [
                    Text(
                      "Nasr City, Cairo",
                      style: TextStyle(
                        fontSize: 9,
                        fontFamily: 'Rubik',
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF003B99),
                      ),
                    ),
                    const SizedBox(width: 5),
                    Icon(Icons.location_on, size: 10, color: Color(0xFF003B99)),
                  ],
                ),
              ),

              // صورة جانبية يمين
              Positioned(
                top: 864.12,
                left: 158.02,
                child: Image.asset(
                  'assets/images/image.png',
                  width: 176.93,
                  height: 89.5,
                  fit: BoxFit.cover,
                ),
              ),

              // Google Map Location
              Positioned(
                top: 931.86,
                left: 29,
                child: Text(
                  "Google Map Location",
                  style: TextStyle(
                    fontFamily: 'Volkhov',
                    fontSize: 9.8,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFEBC069),
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),

              // زر مقاعد التنسيق
              Positioned(
                top: 738,
                left: 155,
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFFEBC069),
                  ),
                  child: Icon(Icons.chair_alt, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
