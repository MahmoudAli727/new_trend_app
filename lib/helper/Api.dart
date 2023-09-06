import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Api {
  Future<dynamic> get({required String url, @required String? token}) async {
    Map<String, String> headers = {};
    if (token != null) {
      headers.addAll({"Authorization": "Bearer $token"});
    }
    http.Response response = await http.get(Uri.parse(url), headers: headers);
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception(
          "there is a problem with Status code ${response.statusCode}");
    }
  }

  Future<dynamic> post(
      {required String url,
      @required dynamic body,
      @required String? token}) async {
    Map<String, String> headers = {
      "Content-Type": "application/x-www-form-urlencoded"
    };
    if (token != null) {
      headers.addAll({"Authorization": "Bearer $token"});
    }
    http.Response response =
        await http.post(Uri.parse(url), headers: headers, body: body);
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception(
          "there is a problem with Status code ${response.statusCode} with body ${jsonDecode(response.body)}");
    }
  }

  Future<dynamic> put(
      {required String url,
      @required dynamic body,
      @required String? token}) async {
    Map<String, String> headers = {
      "Content-Type": "application/x-www-form-urlencoded"
    };
    if (token != null) {
      headers.addAll({"Authorization": "Bearer $token"});
    }
    print("url : $url with body $body and token $token");
    http.Response response =
        await http.put(Uri.parse(url), headers: headers, body: body);
    if (response.statusCode == 200) {
      print(jsonDecode(response.body));
      return jsonDecode(response.body);
    } else {
      throw Exception(
          "there is a problem with Status code ${response.statusCode} with body ${jsonDecode(response.body)}");
    }
  }
}
