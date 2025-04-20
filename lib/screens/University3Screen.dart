import 'package:flutter/material.dart';

class University3Screen extends StatelessWidget {
  const University3Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFCF8F0),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            // العنوان الرئيسي "University"
            Positioned(
              top: 71,
              left: 137,
              child: Text(
                'University',
                style: TextStyle(
                  fontFamily: 'Volkhov',
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF003B99),
                ),
              ),
            ),

            // شعار التطبيق (Logo)
            Positioned(
              top: 50,
              left: 275,
              child: Image.asset(
                'assets/images/logo.png',
                width: 55.49,
                height: 50,
              ),
            ),

            // صورة الجامعة
            Positioned(
              top: 614,
              left: 29,
              child: Image.asset(
                'assets/images/university_image.jpg',
                width: 306,
                height: 245.2,
                fit: BoxFit.cover,
              ),
            ),

            // الكارت الأبيض بمعلومات الجامعة
            Positioned(
              top: 112,
              left: 9,
              child: Container(
                width: 342.2,
                height: 520,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Color(0xFFEBC069), width: 0.7),
                  borderRadius: BorderRadius.circular(10.5),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 20,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      buildField(label: 'Name', value: 'Cairo University'),
                      buildField(
                        label: 'Affiliated University',
                        value: 'Egyptian Government',
                      ),
                      buildField(label: 'Address', value: 'Giza, Egypt'),
                      buildField(
                        label: 'Requirements',
                        value: 'High School Certificate',
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: buildField(
                              label: 'Website',
                              value: 'www.cu.edu.eg',
                            ),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: buildField(
                              label: 'Study Duration',
                              value: '4 Years',
                            ),
                          ),
                        ],
                      ),
                      buildField(label: 'Sub Majors', value: 'CS, IT, IS, AI'),
                    ],
                  ),
                ),
              ),
            ),

            // Location (بالأيقونة)
            Positioned(
              top: 864,
              left: 29,
              child: Row(
                children: [
                  Icon(Icons.location_on, size: 12, color: Color(0xFF003B99)),
                  SizedBox(width: 4),
                  Text(
                    'Giza, Egypt',
                    style: TextStyle(
                      fontSize: 9,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Rubik',
                      color: Color(0xFF003B99),
                    ),
                  ),
                ],
              ),
            ),

            // Google Map Location
            Positioned(
              top: 931.86,
              left: 29,
              child: Text(
                'Google Map Location',
                style: TextStyle(
                  fontFamily: 'Volkhov',
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFEBC069),
                  decoration: TextDecoration.underline,
                ),
              ),
            ),

            // صورة إضافية يمين العنوان
            Positioned(
              top: 864,
              left: 158.02,
              child: Image.asset(
                'assets/images/image5.png',
                width: 176.93,
                height: 89.5,
              ),
            ),
          ],
        ),
      ),
    );
  }

  // تابع لبناء حقل بمسمى وقيمة
  Widget buildField({required String label, required String value}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(
              fontFamily: 'Rubik',
              fontSize: 13,
              fontWeight: FontWeight.w500,
              color: Color(0xFF003B99),
            ),
          ),
          SizedBox(height: 5),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            decoration: BoxDecoration(
              color: Color(0x66EBC069),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              value,
              style: TextStyle(
                fontFamily: 'Rubik',
                fontSize: 12.5,
                fontWeight: FontWeight.w500,
                color: Color(0xFF9E9E9E),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
