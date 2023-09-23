import 'dart:convert';
import 'dart:io';
import 'package:age_calculator/utils/constants.dart';
import 'package:dio/dio.dart' as dio;


class ApiBaseHelper {
  // final sharedPrefs = GetStorage();
  final String _baseUrl = AppConstants.baseUrl;


  Future<dynamic> get(String url, [dynamic params]) async {
    var responseJson;

    // todo
    try {
      // String token = sharedPrefs.read(AppConstants.localStorageUserTokenKey);
      var headers = {
        'Content-type': 'application/json',
        // 'Authorization': 'Authorization ${token}'
      };

      dio.Dio _dio = dio.Dio();
      dio.Response _res = await _dio.get(_baseUrl + url, options: dio.Options(headers: headers), queryParameters: params);
      responseJson = json.decode(_res.toString());
    } on SocketException {
      throw Exception('No Internet connection');
    }
    return responseJson;
  }

  Future<dynamic> post(String url, dynamic body, [bool isToken = false]) async {
    dynamic responseJson;
    try {
      var headers;
      if(isToken) {
        // String token = sharedPrefs.read(AppConstants.localStorageUserTokenKey);
        headers= {
          'Content-type': 'application/json',
          // 'Authorization': 'Authorization ${token}'
        };
      }else{
        headers= {
          'Content-type': 'application/json'
        };
      }

      dio.Dio _dio = dio.Dio();
      final _res = await _dio.post(_baseUrl + url, options: dio.Options(headers: headers), data: body);
      responseJson = json.decode(_res.toString());
    } on SocketException {
      throw Exception('No Internet connection');
    }
    return responseJson;
  }

  Future<dynamic> postWithAnyContentType(String url, dynamic body) async {
    dynamic responseJson;
    try {
      var headers = {
        'Content-type': '*',
        'Accept-type': '*'
      };

      dio.Dio _dio = dio.Dio();
      final _res = await _dio.post(_baseUrl + url, options: dio.Options(headers: headers), data: body);
      responseJson = json.decode(_res.toString());
    } on SocketException {
      throw Exception('No Internet connection');
    }
    return responseJson;
  }

}

