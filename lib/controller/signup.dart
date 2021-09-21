import 'dart:convert';
import 'package:http/http.dart' as http;

class SignUpDatabase {

// variables declaration

  final String username;
  final String email;
  final String password;

  SignUpDatabase(
      {required this.username, required this.email, required this.password});

// function to register users to the database 
  Future<String> register() async {
    try {
      final response = await http.post(
          Uri.parse("http://192.168.56.1/mobile_api/adduser.php"),
          body: {'username': username, 'email': email, 'password': password});
      if (response.statusCode == 200) {
        final result = jsonDecode(response.body);
        return result;
      } else {
        return "error";
      }
    } catch (e) {
      return "error";
    }
  }
}
