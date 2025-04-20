import 'package:flutter/material.dart';

class University1Screen extends StatelessWidget {
  const University1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCF8F0),
      body: Stack(
        children: [
          // University Title
          Positioned(
            top: 71,
            left: 137,
            child: Text(
              'University',
              style: TextStyle(
                fontFamily: 'Volkhov',
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Color(0xFF003B99),
              ),
            ),
          ),

          // Chevron Icon
          Positioned(
            top: 74,
            left: 16,
            child: Icon(Icons.chevron_left, color: Color(0xFF003B99), size: 20),
          ),

          // Logo Image
          Positioned(
            top: 50,
            left: 275,
            child: Image.asset(
              'assets/images/logo.png',
              width: 55.49,
              height: 50,
              fit: BoxFit.cover,
            ),
          ),

          // أول جامعة
          Positioned(
            top: 239,
            left: 27,
            child: Container(
              width: 306,
              height: 132.49,
              decoration: BoxDecoration(
                color: Color(0xFFF8EDD8),
                borderRadius: BorderRadius.circular(6.24),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0, top: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "University Information",
                            style: TextStyle(
                              fontSize: 16.65,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF003B99),
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Cairo University",
                            style: TextStyle(
                              fontSize: 12.48,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF9E9E9E),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(6.24),
                      bottomRight: Radius.circular(6.24),
                    ),
                    child: Image.asset(
                      'assets/images/OIP.jpg',
                      width: 176.66,
                      height: 132.49,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
          ),

          // كرر نفس الكتلة لجامعة تانية (مثلاً Faculty of Engineering)
          // ...

          // Navigation Bar في الأسفل
          Positioned(
            bottom: 0,
            left: 0,
            child: Container(
              width: 360,
              height: 68,
              decoration: BoxDecoration(
                color: Color(0xFFF8EDD8),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  navItem(Icons.search, "Results"),
                  navItem(Icons.school, "University"),
                  navItem(Icons.info, "Information"),
                  navItem(Icons.list, "Tansiq"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget navItem(IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, color: Color(0xFFEBC069)),
        Text(
          label,
          style: TextStyle(
            color: Color(0xFFEBC069),
            fontSize: 10,
            fontFamily: 'Volkhov',
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
