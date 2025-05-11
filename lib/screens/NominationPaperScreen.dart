import 'package:flutter/material.dart';

class NominationPaperScreen extends StatelessWidget {
  const NominationPaperScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Nomination Container
          Positioned(
            left: 9,
            top: 119,
            child: Container(
              width: 342,
              height: 576,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Color(0xFFEBC069)),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Stack(
                children: [
                  // Logo Image
                  Positioned(
                    left: 132, // Adjusted to center inside container
                    top: 5,
                    child: Image.asset(
                      'assets/images/image-removebg-preview.png',
                      width: 76.57,
                      height: 69,
                      fit: BoxFit.contain,
                    ),
                  ),
                  
                  // Title Rectangle
                  Positioned(
                    left: 78,
                    top: 79,
                    child: Container(
                      width: 205,
                      height: 44,
                      decoration: BoxDecoration(
                        color: Color(0xFFF8EDD8),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      alignment: Alignment.center,
                      child: const Text(
                        'نتيجة ترشيح الكلية', // Example text
                        style: TextStyle(
                          fontFamily: 'Volkhov',
                          fontWeight: FontWeight.w700,
                          fontSize: 12,
                          color: Color(0xFF003B99),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),

                  // University Info Text
                  const Positioned(
                    left: 33,
                    top: 133,
                    child: SizedBox(
                      width: 295,
                      height: 45,
                      child: Text(
                        'جامعة القاهرة - كلية الحاسبات والمعلومات',
                        style: TextStyle(
                          fontFamily: 'Volkhov',
                          fontWeight: FontWeight.w700,
                          fontSize: 12,
                          color: Color(0xFF9E9E9E),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),

                  // Personal Info Block
                  const Positioned(
                    left: 21,
                    top: 191,
                    child: SizedBox(
                      width: 322,
                      height: 210,
                      child: SingleChildScrollView(
                        child: Text(
                          'الاسم: أسامة محمد\nالرقم القومي: 1234567890\nالشعبة: علمي رياضة\n...',
                          style: TextStyle(
                            fontFamily: 'Volkhov',
                            fontWeight: FontWeight.w700,
                            fontSize: 13,
                            height: 1.9,
                            color: Color(0xFF9E9E9E),
                          ),
                        ),
                      ),
                    ),
                  ),

                  // Submit Button
                  Positioned(
                    left: 19,
                    bottom: 10,
                    child: Container(
                      width: 295,
                      height: 45,
                      decoration: BoxDecoration(
                        color: Color(0xFFF8EDD8),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      alignment: Alignment.center,
                      child: const Text(
                        'تأكيد الترشيح النهائي',
                        style: TextStyle(
                          fontFamily: 'Volkhov',
                          fontWeight: FontWeight.w700,
                          fontSize: 12,
                          color: Color(0xFFFF5100),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
