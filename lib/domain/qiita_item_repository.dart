import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router_sample/domain/qiita_item.dart';

final qiitaItemRepository = Provider<QiitaItemRepository>((ref) {
  throw UnimplementedError();
});

abstract interface class QiitaItemRepository {
  Future<List<QiitaItem>> getItems(int? page, {String? keyword});

  Future<QiitaItem> getItem(String id);
}
