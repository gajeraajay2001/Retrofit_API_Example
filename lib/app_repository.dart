import 'package:dio/dio.dart';
import 'package:untitled1/Service/api_service.dart';

class AppRepository {
  ApiClient? _apiRequest;
  Dio? dio;
  AppRepository() {
    dio = Dio();
    _apiRequest = ApiClient(dio!);
  }
}
