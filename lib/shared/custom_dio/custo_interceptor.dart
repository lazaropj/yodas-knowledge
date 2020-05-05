
import 'package:dio/dio.dart';

class CustomInterceptor extends InterceptorsWrapper {

  @override
  onRequest(RequestOptions options) {
    print("REQUEST METHOD:${options.method} => Path: ${options.path}");

    return options;
  }

  @override
  onResponse(Response response) {
    //200 or 201
    print("RESPONSE Code:${response.statusCode} => Path: ${response.request.path}");
    return response;
  }

  @override
  onError(DioError err) {
    print("RESPONSE Code:${err.response.statusCode} => Path: ${err.request.path}");
    return err;
  }

}