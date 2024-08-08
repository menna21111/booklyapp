
import 'dart:developer';

import 'package:dio/dio.dart';

class Apiservice {//wraper as method
  final _baseUrl = 'https://www.googleapis.com/books/v1/';
  final Dio _dio;
  Apiservice(this._dio);
  Future<Map<String, dynamic>> get({required String endpoint}) async {//الليراجع من الداتا ماب 
    var response = await _dio.get('$_baseUrl$endpoint');
    return response.data;
    print(response.data);
    log(response.data);
  }
}
