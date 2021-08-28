import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:untitled1/Models/data_model.dart';
part 'api_service.g.dart';

class Apis {
  static const String users = "/users";
}

@RestApi(baseUrl: "https://gorest.co.in/public-api/")
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @GET(Apis.users)
  Future<ResponseData> getUsers();
}
