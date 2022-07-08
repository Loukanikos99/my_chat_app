// ignore_for_file: prefer_const_constructors
import 'package:test/test.dart';
import '../../lib/src/chat_app_client.dart';

void main() {
  group('ChatAppClient', () {
    test('can be instantiated', () {
      expect(ChatAppClient(), isNotNull);
    });
  });
}
