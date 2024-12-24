import 'package:flutter/material.dart';
import 'package:flutter_duo_practice/screens/profile/inner_browser.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Browser widget test', (WidgetTester tester) async {
    // Build the Player widget
    await tester.pumpWidget(const MaterialApp(home: InnerBrowser()));

    // Verify if the Player page contains the expected text
    expect(find.text('GitHub'), findsOneWidget);

    // Verify if the AppBar contains the expected title
    expect(find.widgetWithText(AppBar, 'GitHub'), findsOneWidget);
  });
}