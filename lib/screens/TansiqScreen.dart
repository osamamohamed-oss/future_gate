import 'package:flutter/material.dart';

class TansiqScreen extends StatelessWidget {
  const TansiqScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFCF8F0),
      body: Stack(
        children: [
          // Chevron (Back Button)
          Positioned(
            top: 74,
            left: 16,
            child: Icon(Icons.arrow_back_ios, size: 15, color: Color(0xFF003B99)),
          ),

          // Header Text
          Positioned(
            top: 71,
            left: 151,
            child: Text(
              "Tansiq",
              style: TextStyle(
                fontFamily: 'Volkhov',
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: Color(0xFF003B99),
              ),
            ),
          ),

          // Tansiq Data
          Positioned(
            top: 110,
            left: 24,
            child: Text(
              "Tansiq Data",
              style: TextStyle(
                fontFamily: 'Volkhov',
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: Color(0xFF003B99),
              ),
            ),
          ),

          // Available Universities Label
          Positioned(
            top: 307,
            left: 24,
            child: Text(
              "List of Available Universities",
              style: TextStyle(
                fontFamily: 'Volkhov',
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: Color(0xFF003B99),
              ),
            ),
          ),

          // University Block Example (One Block)
          Positioned(
            top: 331,
            left: 16,
            child: Container(
              width: 328,
              height: 88,
              decoration: BoxDecoration(
                color: Color(0xFFF8EDD8),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Stack(
                children: [
                  // University Image
                  Positioned(
                    right: 0,
                    child: Container(
                      width: 108,
                      height: 88,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(12),
                          bottomRight: Radius.circular(12),
                        ),
                        image: DecorationImage(
                          image: AssetImage('assets/images/OIP.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),

                  // University Name
                  Positioned(
                    top: 20,
                    left: 39,
                    child: Text(
                      "Cairo University",
                      style: TextStyle(
                        fontFamily: 'Volkhov',
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF003B99),
                      ),
                    ),
                  ),

                  // Faculty Name
                  Positioned(
                    top: 44,
                    left: 39,
                    child: Text(
                      "Faculty of Engineering",
                      style: TextStyle(
                        fontFamily: 'Volkhov',
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF9E9E9E),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Nomination Paper Button
          Positioned(
            top: 641,
            left: 78,
            child: GestureDetector(
              onTap: () {
                // Handle navigation
              },
              child: Container(
                width: 205,
                height: 44,
                decoration: BoxDecoration(
                  color: Color(0xFFEBC069),
                  borderRadius: BorderRadius.circular(10),
                ),
                alignment: Alignment.center,
                child: Text(
                  "Nomination Paper",
                  style: TextStyle(
                    fontFamily: 'Volkhov',
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
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
