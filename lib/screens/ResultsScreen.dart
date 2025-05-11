import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCF8F0),
      body: Stack(
        children: [
          // Background Box (Personal Data)
          Positioned(
            left: 12,
            top: 116,
            child: Container(
              width: 336,
              height: 218,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Color(0xFFEBC069)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Mohamed Ahmed',
                    style: TextStyle(
                      fontFamily: 'Volkhov',
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF003B99),
                    ),
                  ),
                  Text(
                    '1548945',
                    style: TextStyle(
                      fontFamily: 'Volkhov',
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF003B99),
                    ),
                  ),
                  Text(
                    '354',
                    style: TextStyle(
                      fontFamily: 'Volkhov',
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF003B99),
                    ),
                  ),
                  Text(
                    '80%',
                    style: TextStyle(
                      fontFamily: 'Volkhov',
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF003B99),
                    ),
                  ),
                  Text(
                    '2201',
                    style: TextStyle(
                      fontFamily: 'Volkhov',
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF003B99),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Title Results
          Positioned(
            left: 149,
            top: 71,
            child: Center(
              child: Text(
                'Results',
                style: TextStyle(
                  fontFamily: 'Volkhov',
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                  color: Color(0xFF003B99),
                ),
              ),
            ),
          ),
          // Chevron Icon
          Positioned(
            left: 16,
            top: 74,
            child: Container(width: 8, height: 15, color: Color(0xFF003B99)),
          ),
          // Score Box
          Positioned(
            left: 12,
            top: 342,
            child: Container(
              width: 336,
              height: 274,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Color(0xFFEBC069)),
              ),
              child: Column(
                children: [
                  _scoreRow('Math', '98%'),
                  _scoreRow('Subject 1', '98%'),
                  _scoreRow('Subject 2', '98%'),
                  _scoreRow('Subject 3', '98%'),
                  _scoreRow('Subject 4', '44%'),
                  _scoreRow('Subject 5', '98%'),
                  _scoreRow('Subject 6', '98%'),
                  _scoreRow('Subject 7', '32%'),
                  _scoreRow('Subject 8', '98%'),
                ],
              ),
            ),
          ),
          // View Tansiq Result Button
          Positioned(
            left: 78,
            top: 641,
            child: GestureDetector(
              onTap: () {
                // Navigate to Tansiq results
              },
              child: Container(
                width: 205,
                height: 44,
                decoration: BoxDecoration(
                  color: Color(0xFFEBC069),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    'View Tansiq Result',
                    style: TextStyle(
                      fontFamily: 'Volkhov',
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _scoreRow(String subject, String score) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            subject,
            style: TextStyle(
              fontFamily: 'Volkhov',
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Color(0xFF17A44A),
            ),
          ),
          Text(
            score,
            style: TextStyle(
              fontFamily: 'Volkhov',
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Color(0xFF17A44A),
            ),
          ),
        ],
      ),
    );
  }
}
