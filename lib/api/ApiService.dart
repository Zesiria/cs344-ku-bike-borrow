import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiService {
  static const _baseUrl = 'http://192.168.1.4:8090';

  static Future<Map<String, dynamic>> fetchData(Map<String, dynamic> data) async {
    const url = '$_baseUrl/user/login/token';
    // final response = await http.get(Uri.parse(url));

    final response = await http.post(Uri.parse(url),
        headers: <String,String>{
          'Content-Type' : 'application/json; charset=UTF-8'
        },
        body: jsonEncode(data)
    );

    return jsonDecode(response.body);
  }

  static Future<Map<String, dynamic>> login(Map<String, dynamic> data) async {
    const url = '$_baseUrl/user/login';
    final Map<String, String> requestBody = {
      'username' : data['username'],
      'password' : data['password']
    };
    final response = await http.post(Uri.parse(url),
        headers: <String,String>{
          'Content-Type' : 'application/json; charset=UTF-8'
        },
        body: jsonEncode(requestBody)
    );

    if(response.statusCode == 200) {
      return jsonDecode(response.body);
    }
    else {
      return jsonDecode(response.body);
    }
  }

  static Future<Map<String, dynamic>> register(Map<String, dynamic> data) async {
    const url = '$_baseUrl/user/register';

    final Map<String, String> requestBody = {
      'email' : data['email'],
      'username' : data['username'],
      'password' : data['password']
    };

    final response = await http.post(Uri.parse(url),
        headers: <String,String>{
          'Content-Type' : 'application/json; charset=UTF-8'
        },
        body: jsonEncode(requestBody)
    );

    return jsonDecode(response.body);
  }
}