import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:one_word_play_game_frontend/main.dart';

void main() {
  testWidgets('App generation message displayed', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('one_word_play_game_frontend App is being generated...'), findsOneWidget);
    expect(find.byType(CircularProgressIndicator), findsOneWidget);
  });

  testWidgets('App bar has correct title', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('one_word_play_game_frontend'), findsOneWidget);
  });
}
