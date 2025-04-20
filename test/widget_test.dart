import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:future_gate/main.dart';

void main() {
  testWidgets('Logo screen appears on launch', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    // تحقق من وجود عنصر معين في شاشة اللوجو
    expect(find.byType(Image), findsOneWidget);
    // أو لو عندك نص معين في شاشة اللوجو
    // expect(find.text('FutureGate'), findsOneWidget);
  });
}
