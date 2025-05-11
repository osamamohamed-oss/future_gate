import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // اللوغو (الصورة + اسم FutureGate)
          Positioned(
            top: 77,
            left: 83,
            child: SizedBox(
              width: 195,
              height: 143,
              child: Image.asset(
                'assets/images/image-removebg-preview.png',
                fit: BoxFit.contain,
              ),
            ),
          ),
          Positioned(
            top: 185,
            left: 83,
            child: Text(
              'FutureGate',
              style: TextStyle(
                fontFamily: 'Volkhov',
                fontSize: 32,
                fontWeight: FontWeight.w700,
                color: Color(0xFF003B99),
              ),
            ),
          ),

          // Full Name
          Positioned(
            top: 236,
            left: 30,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Full Name',
                  style: TextStyle(
                    fontFamily: 'Volkhov',
                    fontSize: 15,
                    color: Color(0xFF535353),
                  ),
                ),
                const SizedBox(height: 5),
                Container(
                  width: 300,
                  height: 50,
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.8),
                    border: Border.all(color: Color(0xFF757575)),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.person, size: 20, color: Colors.grey),
                      const SizedBox(width: 10),
                      Text(
                        'Mohamed Ahmed',
                        style: TextStyle(
                          fontFamily: 'Volkhov',
                          fontSize: 14,
                          color: Colors.grey.withOpacity(0.6),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // Seat Number
          Positioned(
            top: 317,
            left: 30,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Seat Number',
                  style: TextStyle(
                    fontFamily: 'Volkhov',
                    fontSize: 15,
                    color: Color(0xFF535353),
                  ),
                ),
                const SizedBox(height: 5),
                Container(
                  width: 300,
                  height: 50,
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.8),
                    border: Border.all(color: Color(0xFF757575)),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.numbers, size: 20, color: Colors.grey),
                      const SizedBox(width: 10),
                      Text(
                        '************',
                        style: TextStyle(
                          fontFamily: 'Volkhov',
                          fontSize: 14,
                          color: Colors.grey.withOpacity(0.6),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // Email
          Positioned(
            top: 398,
            left: 30,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Email',
                  style: TextStyle(
                    fontFamily: 'Volkhov',
                    fontSize: 15,
                    color: Color(0xFF535353),
                  ),
                ),
                const SizedBox(height: 5),
                Container(
                  width: 300,
                  height: 50,
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.8),
                    border: Border.all(color: Color(0xFF757575)),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.mail_outline, size: 20, color: Colors.grey),
                      const SizedBox(width: 10),
                      Text(
                        'example@email.com',
                        style: TextStyle(
                          fontFamily: 'Volkhov',
                          fontSize: 14,
                          color: Colors.grey.withOpacity(0.6),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // Password
          Positioned(
            top: 479,
            left: 30,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Password',
                  style: TextStyle(
                    fontFamily: 'Volkhov',
                    fontSize: 15,
                    color: Color(0xFF535353),
                  ),
                ),
                const SizedBox(height: 5),
                Container(
                  width: 300,
                  height: 50,
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.8),
                    border: Border.all(color: Color(0xFF757575)),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.lock_outline, size: 20, color: Colors.grey),
                      const SizedBox(width: 10),
                      Text(
                        '************',
                        style: TextStyle(
                          fontFamily: 'Volkhov',
                          fontSize: 14,
                          color: Colors.grey.withOpacity(0.6),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // زر Sign Up
          Positioned(
            top: 571,
            left: 30,
            child: Container(
              width: 300,
              height: 50,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Color(0xFFF8EDD8), Color(0xFFE3C280), Color(0xFFEBC069)],
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Center(
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                    letterSpacing: -0.33,
                  ),
                ),
              ),
            ),
          ),

          // Do have an account? Login
          Positioned(
            top: 649,
            left: 85,
            child: Text(
              'Do have an account? Login',
              style: TextStyle(
                fontFamily: 'Volkhov',
                fontSize: 14,
                color: Color(0xFF424242),
                letterSpacing: -0.33,
              ),
            ),
          ),

          // شريط الحالة العلوي (وقت، شبكة، بطارية، إلخ)
          Positioned(
            top: 7,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    '9:41',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF535353),
                    ),
                  ),
                  Row(
                    children: [
                      Icon(Icons.signal_cellular_4_bar, size: 18, color: Color(0xFF535353)),
                      SizedBox(width: 5),
                      Icon(Icons.wifi, size: 18, color: Color(0xFF535353)),
                      SizedBox(width: 5),
                      Icon(Icons.battery_full, size: 18, color: Color(0xFF535353)),
                    ],
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
