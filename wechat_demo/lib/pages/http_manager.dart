import 'package:dio/dio.dart';

class HttpManager {
  static final Dio dio = Dio();

  static Future request(String url,
      {String method = 'get',
      Map<String, dynamic> queryParameters,
      int timeOut}) {
//    1、创建配置，什么方法请求
    final options = Options(method: method, receiveTimeout: timeOut);
//  2、发网络请求
    return dio.request(
      url,
      queryParameters: queryParameters,
      options: options,
    );
  }
}

Future<Response> get(url,
    {Map<String, String> headers,
    Map<String, dynamic> queryParameters,
    int timeout}) {
  return HttpManager.request(url,
      queryParameters: queryParameters, method: 'get', timeOut: timeout);
}
