import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';

class ApiHelper {
  static Future<dynamic> get(String url) async {
    final dio = Dio();
    try {
      final response = await dio.get(
        url,
      );
      return response.data;
    } catch (issue) {
      throw 'no internet';
    }
  }

  static Future<dynamic> put(String url, {Map<String, dynamic>? params}) async {
    final responseJson;
    final dio = Dio();

    try {
      final body = json.encode(params);
      final response = await dio.put(url, data: body);
      responseJson = response.data;
    } on SocketException {
      throw 'No Internet connection';
    }

    return responseJson;
  }
}
