import 'package:flutter/material.dart';

class Onboarding3Screen extends StatelessWidget {
  const Onboarding3Screen({super.key});

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
                  image: AssetImage('assets/images/image.png'), // ضع الصورة هنا
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),

          // نقاط التنقل
          const Positioned(
            top: 543,
            left: 152,
            child: Row(
              children: [
                _Dot(color: Color(0xFFDEDBDB)),
                SizedBox(width: 9),
                _Dot(color: Color(0xFFDEDBDB)),
                SizedBox(width: 9),
                _Dot(color: Color(0xFFEBC069)),
              ],
            ),
          ),

          // نص العنوان
          const Positioned(
            top: 554,
            left: 65,
            right: 65,
            child: Center(
              child: Text(
                'Explore universities and apply easily',
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

          // زر Get Started
          Positioned(
            top: 639,
            left: 80,
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/login'); // عدلها حسب اسم مسارك
              },
              child: Container(
                width: 200,
                height: 44,
                decoration: BoxDecoration(
                  color: const Color(0xFFEBC069),
                  borderRadius: BorderRadius.circular(10),
                ),
                alignment: Alignment.center,
                child: const Text(
                  'Get Started',
                  style: TextStyle(
                    fontFamily: 'Volkhov',
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),

          // شريط التنقل (Status Bar)
          const Positioned(
            top: 7,
            left: 20,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '12:34',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                    color: Color(0xFF535353),
                  ),
                ),
                Icon(Icons.network_wifi, size: 20, color: Color(0xFF535353)),
                Icon(Icons.battery_full, size: 20, color: Color(0xFF535353)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// ويدجت النقطة
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
