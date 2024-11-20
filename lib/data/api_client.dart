import 'package:dio/dio.dart';
import 'package:go_router_sample/data/json/qiita_item_json.dart';
import 'package:go_router_sample/data/qiita_uri.dart';

class ApiClient {
  ApiClient()
      : _dio = Dio(
          BaseOptions(
            baseUrl: qiitaBaseUrl,
          ),
        )..interceptors.add(LogInterceptor());

  final Dio _dio;

  Future<List<QiitaItemJson>> getItems(int? page) async {
    final response = await _dio.get(
      qiitaItemsPath,
      queryParameters: <String, dynamic>{
        'page': page ?? 1,
      },
    );
    final data = response.data as List<dynamic>;
    return data.map((item) {
      return QiitaItemJson.fromJson(item);
    }).toList();
  }

  Future<QiitaItemJson> getItem(String id) async {
    final response = await _dio.get(
      qiitaItemPath,
    );
    final data = response.data as dynamic;
    return QiitaItemJson.fromJson(data);
  }
}
