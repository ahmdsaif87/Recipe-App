import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:coba_api/pages/login.dart';

void main() {
  testWidgets('LoginPage UI renders correctly', (WidgetTester tester) async {
    // Render halaman login
    await tester.pumpWidget(
      const MaterialApp(
        home: LoginPage(),
      ),
    );

    // Cek TextField (email & password)
    expect(find.byType(TextField), findsNWidgets(2));

    // Cek tombol login
    expect(find.byType(ElevatedButton), findsOneWidget);

    // Isi form
    await tester.enterText(
      find.byType(TextField).at(0),
      'user@example.com',
    );
    await tester.enterText(
      find.byType(TextField).at(1),
      'Password1234',
    );

    // Tap tombol login (tidak peduli hasil API)
    await tester.tap(find.byType(ElevatedButton));
    await tester.pump();

    // Test lolos jika tidak crash
    expect(true, true);
  });
}
