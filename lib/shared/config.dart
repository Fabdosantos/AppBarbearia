import 'package:flutter_dotenv/flutter_dotenv.dart';

class Config {
  static String get email => _get('email');
  static String get password => _get('password');

  static String _get(String name) => dotenv.env[name] ?? '';
}
