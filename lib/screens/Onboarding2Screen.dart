import 'package:flutter/material.dart';

class Onboarding2Screen extends StatelessWidget {
  const Onboarding2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // الخلفية
          Positioned.fill(child: Container(color: Colors.white)),

          // الصورة
          Positioned(
            top: 144,
            left: 28,
            child: Container(
              width: 302,
              height: 389,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage('assets/images/image.png'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),

          // نقاط التنقل (Navigation Dots)
          Positioned(
            top: 543,
            left: 152,
            child: Row(
              children: const [
                _Dot(color: Color(0xFFEBC069)),
                SizedBox(width: 9),
                _Dot(color: Color(0xFFDEDBDB)),
                SizedBox(width: 9),
                _Dot(color: Color(0xFFDEDBDB)),
              ],
            ),
          ),

          // النص
          const Positioned(
            top: 580,
            left: 65,
            right: 65,
            child: Center(
              child: Text(
                'View your results and available options',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Volkhov',
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                  color: Color(0xFF003B99),
                ),
              ),
            ),
          ),

          // زر التالي
          Positioned(
            top: 639,
            left: 80,
            child: GestureDetector(
              onTap: () {
                // الانتقال للشاشة التالية
                Navigator.pushNamed(context, '/onboarding3');
              },
              child: Container(
                width: 200,
                height: 50,
                decoration: BoxDecoration(
                  color: const Color(0xFF003B99),
                  borderRadius: BorderRadius.circular(10),
                ),
                alignment: Alignment.center,
                child: const Text(
                  'Next',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ويدجت مخصصة للنقطة (Dot)
class _Dot extends StatelessWidget {
  final Color color;
  const _Dot({required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 12,
      height: 12,
      decoration: BoxDecoration(color: color, shape: BoxShape.circle),
    );
  }
}
