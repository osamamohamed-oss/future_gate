import 'package:flutter/material.dart';
import 'package:future_gate/screens/AboutAppScreen.dart';
import 'package:future_gate/screens/ChangePasswordScreen.dart';
import 'package:future_gate/screens/ContactUsScreen.dart';
import 'package:future_gate/screens/ForgetPasswordScreen.dart';
import 'package:future_gate/screens/HomeScreen.dart';
import 'package:future_gate/screens/LogoScreen.dart'; // لا حاجة لاستخدام 'as LogoScreenPackage' إذا لم يكن هناك تضارب
import 'package:future_gate/screens/NominationPaperScreen.dart';
// تم إزالة الاستيراد الغير مستخدم لـ Onboarding1Screen لأننا نعرفه هنا داخل الكود
import 'package:future_gate/screens/Onboarding2Screen.dart';
import 'package:future_gate/screens/Onboarding3Screen.dart';
import 'package:future_gate/screens/University1Screen.dart';
// ignore: unused_import
import 'package:future_gate/screens/University2Screen.dart';
import 'package:future_gate/screens/University3Screen.dart';
import 'package:future_gate/screens/VerificationScreen.dart';
import 'package:future_gate/screens/ResultsScreen.dart';
import 'package:future_gate/screens/TansiqScreen.dart';
import 'package:future_gate/screens/SignupScreen.dart';
import 'route_names.dart';

class AppRoutes {
  static final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
    RouteNames.logo: (context) => LogoScreen(),
    RouteNames.onboarding1: (context) => Onboarding1Screen(),
    RouteNames.onboarding2: (context) => Onboarding2Screen(),
    RouteNames.onboarding3: (context) => Onboarding3Screen(),
    RouteNames.login: (context) => LoginScreen(),
    RouteNames.signup: (context) => SignUpScreen(),
    RouteNames.home: (context) => HomeScreen(),
    RouteNames.seatOn: (context) => SeatOnScreen(),
    RouteNames.results: (context) => ResultsScreen(),
    RouteNames.tansiq: (context) => TansiqScreen(),
    RouteNames.university1: (context) => University1Screen(),
    RouteNames.university2: (context) => University2Screen(),
    RouteNames.university3: (context) => University3Screen(),
    RouteNames.nominationPaper: (context) => NominationPaperScreen(),
    RouteNames.personalInfo: (context) => PersonalInfoScreen(),
    RouteNames.aboutApp: (context) => AboutAppScreen(),
    RouteNames.contactUs: (context) => ContactUsScreen(),
    RouteNames.androidMedium: (context) => AndroidMediumScreen(),
    RouteNames.forgetPassword: (context) => ForgetPasswordScreen(),
    RouteNames.verification: (context) => VerificationScreen(),
    RouteNames.changePassword: (context) => ChangePasswordScreen(),
    RouteNames.password: (context) => PasswordScreen(),
  };
}

class Onboarding1Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Onboarding 1 Screen')),
      body: Center(child: const Text('Welcome to the Onboarding 1 Screen!')),
    );
  }
}

class University2Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('University 2 Screen')),
      body: Center(child: const Text('Welcome to University 2 Screen!')),
    );
  }
}

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login Screen')),
      body: Center(child: const Text('Welcome to the Login Screen!')),
    );
  }
}

class AndroidMediumScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Android Medium Screen')),
      body: Center(child: const Text('Welcome to the Android Medium Screen!')),
    );
  }
}

class PersonalInfoScreen extends StatelessWidget {
  const PersonalInfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Personal Info Screen')),
      body: Center(child: const Text('Welcome to the Personal Info Screen!')),
    );
  }
}

class SeatOnScreen extends StatelessWidget {
  const SeatOnScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Seat On Screen')),
      body: Center(child: const Text('Welcome to the Seat On Screen!')),
    );
  }
}

class PasswordScreen extends StatelessWidget {
  const PasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Password Screen')),
      body: Center(child: const Text('Welcome to the Password Screen!')),
    );
  }
}
