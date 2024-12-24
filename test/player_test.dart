import 'package:flutter/material.dart';
import 'package:flutter_duo_practice/screens/player/player.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Player widget test', (WidgetTester tester) async {
    // Build the Player widget
    await tester.pumpWidget(const MaterialApp(home: Player()));

    // Verify if the Player page contains the expected text
    expect(find.text('Player'), findsOneWidget);

    // Verify if the AppBar contains the expected title
    expect(find.widgetWithText(AppBar, 'Player'), findsOneWidget);
  });
}