import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

import '../models/login_post.dart';
import '../models/transaction_get.dart';

class NetworkHelper {
  Future<List<Posts>?> getposts() async {
    var client = http.Client();
    var uri = Uri.parse('https://jsonplaceholder.typicode.com/posts');
    var response = await client.get(uri);
    if (response.statusCode == 200) {
      var body = response.body;
      return postsFromJson(body);
    }
  }

  Future<Login> getLogin({
    var phone,
    var password,
  }) async {
    var client = http.Client();
    var loginmodel;
    var uri = Uri.parse(
        'http://103.38.197.18/mobilebanking/api/v2/mdabaliReportUserLogin');
    var response = await client.post(
      uri,
      headers: {HttpHeaders.contentTypeHeader: "application/json"},
      body: jsonEncode(
        <dynamic, dynamic>{"mobileno": '9849203704', "password": 'Nepal@12344'},
      ),
    );

    if (response.statusCode == 200) {
      var body = response.body;
      var jsonMap = jsonDecode(body);
      loginmodel = Login.fromJson(jsonMap);
    }
    return loginmodel;
  }
}
