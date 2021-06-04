import 'dart:convert';

import 'package:http/http.dart' as http;
import 'config.dart';

class LoginAuthentication {
  static Future<http.Response> login(String email, String pass) async {
    final endPoint = '/api/v1/users/auth/sign_in';

    final http.Response result =
        await http.post(Uri.parse("${Authenticator.baseUrl}$endPoint"),
            headers: {'Content-Type': 'application/json'},
            body: jsonEncode(
              {'email': email, 'password': pass},
            ));
    return result;
  }
}
