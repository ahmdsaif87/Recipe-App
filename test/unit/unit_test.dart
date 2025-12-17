import 'package:flutter_test/flutter_test.dart';
import 'package:coba_api/services/auth_service.dart';

void main() {
  final authService = AuthService();

  test('Login returns success or error map', () async {
    final result = await authService.login(
      'user@example.com',
      'Password1234',
    );

    // Minimal assertion
    expect(result, isA<Map<String, dynamic>>());
    expect(result.containsKey('status'), true);
  });
}
