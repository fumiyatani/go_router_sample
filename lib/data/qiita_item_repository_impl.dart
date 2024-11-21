import 'package:go_router_sample/data/api_client.dart';
import 'package:go_router_sample/domain/qiita_item.dart';
import 'package:go_router_sample/domain/qiita_item_repository.dart';

class QiitaItemRepositoryImpl implements QiitaItemRepository {
  QiitaItemRepositoryImpl({
    required ApiClient apiClient,
  }) : _apiClient = apiClient;

  final ApiClient _apiClient;

  @override
  Future<List<QiitaItem>> getItems(int? page, {String? keyword}) {
    final result = _apiClient.getItems(page, keyword);
    return result.then((value) {
      return value
          .map((item) => QiitaItem(
                id: item.id,
                title: item.title,
                likesCount: item.likesCount,
              ))
          .toList();
    });
  }

  @override
  Future<QiitaItem> getItem(String id) {
    final item = _apiClient.getItem(id);
    return item.then(
      (item) => QiitaItem(
        id: item.id,
        title: item.title,
        likesCount: item.likesCount,
      ),
    );
  }
}
