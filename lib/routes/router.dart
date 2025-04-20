// lib/router/router.dart
import 'package:flutter/material.dart';
import 'package:future_gate/screens/logo_screen.dart';
import 'package:future_gate/screens/onboarding1_screen.dart';
import 'package:future_gate/screens/onboarding2_screen.dart';
import 'package:future_gate/screens/onboarding3_screen.dart';
import 'package:future_gate/screens/login_screen.dart';
import 'package:future_gate/screens/signup_screen.dart';
import 'package:future_gate/screens/home_screen.dart';
import 'package:future_gate/screens/seat_on_screen.dart';
import 'package:future_gate/screens/results_screen.dart';
import 'package:future_gate/screens/tansiq_screen.dart';
import 'package:future_gate/screens/university1_screen.dart';
import 'package:future_gate/screens/university2_screen.dart';
import 'package:future_gate/screens/university3_screen.dart';
import 'package:future_gate/screens/nomination_paper_screen.dart';
import 'package:future_gate/screens/personal_info_screen.dart';
import 'package:future_gate/screens/about_app_screen.dart';
import 'package:future_gate/screens/contact_us_screen.dart';
import 'package:future_gate/screens/android_medium_screen.dart';
import 'package:future_gate/screens/forget_password_screen.dart';
import 'package:future_gate/screens/verification_screen.dart';
import 'package:future_gate/screens/change_password_screen.dart';
import 'package:future_gate/screens/password_screen.dart';

class AppRoutes {
  static Map<String, WidgetBuilder> routes = {
    '/': (context) => LogoScreen(),
    '/onboarding1': (context) => Onboarding1Screen(),
    '/onboarding2': (context) => Onboarding2Screen(),
    '/onboarding3': (context) => Onboarding3Screen(),
    '/login': (context) => LoginScreen(),
    '/signup': (context) => SignupScreen(),
    '/home': (context) => HomeScreen(),
    '/seat_on': (context) => SeatOnScreen(),
    '/results': (context) => ResultsScreen(),
    '/tansiq': (context) => TansiqScreen(),
    '/university1': (context) => University1Screen(),
    '/university2': (context) => University2Screen(),
    '/university3': (context) => University3Screen(),
    '/nomination_paper': (context) => NominationPaperScreen(),
    '/personal_info': (context) => PersonalInfoScreen(),
    '/about_app': (context) => AboutAppScreen(),
    '/contact_us': (context) => ContactUsScreen(),
    '/android_medium': (context) => AndroidMediumScreen(),
    '/forget_password': (context) => ForgetPasswordScreen(),
    '/verification': (context) => VerificationScreen(),
    '/change_password': (context) => ChangePasswordScreen(),
    '/password': (context) => PasswordScreen(),
  };
}
