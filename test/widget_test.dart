// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';
import 'package:chatapp/peralta_ChatApp.dart'; // Make sure this path is correct

void main() {
  // A simple test to verify that the main app widget builds without errors.
  testWidgets('Chat App smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    // This will load the main widget of your application.
    await tester.pumpWidget(MyApp());

    // --- VERIFICATION STEP ---
    //
    // Now, verify that a key piece of your UI is present.
    // For example, let's check if the AppBar title is displayed.
    //
    // IMPORTANT: You might need to change 'Chat App' to match the
    // exact title you are using in your AppBar.
    expect(find.text('Chat App'), findsOneWidget);

    // You can add more checks here. For example, if you have a
    // welcome message or a specific button, you can test for it:
    //
    // expect(find.text('Welcome to ChatApp!'), findsOneWidget);
    // expect(find.byType(FloatingActionButton), findsOneWidget);
  });
}
