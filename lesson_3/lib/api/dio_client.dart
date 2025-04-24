import 'package:dio/dio.dart';
import 'package:lesson_3/api/rest_client.dart';

class DioClient {
  late final RestClient api;

  DioClient() {
    final dio = Dio();
    dio.options.headers['X-Parse-Application-Id'] =
        'p1AemwNgwSNLSpkgM2GpidfaZlI2msXSQF2anciZ';
    dio.options.headers['X-Parse-REST-API-Key'] =
        'IHzNH49gnvvakUopFw0IsG8ecYXUHiISRBo0Q0l7';
    dio.options.headers['Content-Type'] = 'application/json';
    api = RestClient(dio);
  }
}
