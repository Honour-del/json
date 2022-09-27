import 'dart:convert';
import 'package:dio/dio.dart';
import '../model/word_model.dart';
import '../api/api_constants.dart';

class Apis{
  late final ApiConstants _constants;
  late final Dio _dio;

  Future getCalls() async{
    final responses = _dio.get("$_constants.baseUrl");
    final json = responses;
    final parsedJson = jsonDecode(json.toString());
    final test = Test.fromJson(parsedJson);
    return test;
  }

  Future postCalls() async{
    final response = _dio.post("$_constants.baseUrl");
    final json = response;
    final parsedJson = jsonEncode(json);
    // final test = Test(parsedJson);
    return parsedJson;
  }
}