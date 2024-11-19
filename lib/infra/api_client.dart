import 'package:dio/dio.dart';
import 'package:go_router_sample/domain/qiita_item.dart';
import 'package:go_router_sample/infra/json/qiita_item_json.dart';
import 'package:go_router_sample/infra/qiita_uri.dart';

class ApiClient {
  ApiClient()
      : _dio = Dio(
          BaseOptions(
            baseUrl: qiitaBaseUrl,
          ),
        )..interceptors.add(LogInterceptor());

  final Dio _dio;

  Future<List<QiitaItem>> getItems(int? page) async {
    final response = await _dio.get(
      qiitaItemsPath,
      queryParameters: <String, dynamic>{
        'page': page ?? 1,
      },
    );
    final data = response.data as List<dynamic>;
    return data.map((item) {
      final json = QiitaItemJson.fromJson(item);
      return QiitaItem(
        id: json.id,
        title: json.title,
        likesCount: json.likesCount,
      );
    }).toList();
  }
}
