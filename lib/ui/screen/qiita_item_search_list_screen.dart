import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router_sample/domain/qiita_item.dart';
import 'package:go_router_sample/domain/qiita_item_repository.dart';
import 'package:go_router_sample/ui/screen/component/qiita_list_item.dart';

final qiitaItemsProvider =
    FutureProvider.family<List<QiitaItem>, (int?, String?)>((ref, param) async {
  final currentPage = param.$1;
  final keyword = param.$2;
  final repository = ref.watch(qiitaItemRepository);
  return await repository.getItems(currentPage, keyword: keyword);
});

class QiitaItemSearchListNotifier extends Notifier<(int?, String?)> {
  @override
  (int?, String?) build() => (null, null);

  void next() {
    final currentPage = state.$1;
    final keyword = state.$2;

    if (currentPage == null) {
      state = (1, keyword);
    } else {
      final nextPage = currentPage + 1;
      state = (nextPage, keyword);
    }
  }

  void search(String keyword) {
    state = (1, keyword);
  }
}

final qiitaItemSearchListNotifierProvider =
    NotifierProvider<QiitaItemSearchListNotifier, (int?, String?)>(
        QiitaItemSearchListNotifier.new);

class QiitaItemSearchListScreen extends ConsumerWidget {
  const QiitaItemSearchListScreen({
    super.key,
    required void Function(String id) navigateToDetail,
  }) : _navigateToDetail = navigateToDetail;

  final void Function(String id) _navigateToDetail;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final qiitaItemSearchListNotifier =
        ref.watch(qiitaItemSearchListNotifierProvider);
    final currentPage = qiitaItemSearchListNotifier.$1;
    final keyword = qiitaItemSearchListNotifier.$2;

    final qiitaItems = ref.watch(qiitaItemsProvider((currentPage, keyword)));

    return Scaffold(
      appBar: AppBar(
        title: const Text('検索'),
      ),
      body: switch (qiitaItems) {
        AsyncData(:final value) => Stack(
            children: [
              Row(
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemCount: value.length,
                      itemBuilder: (context, index) {
                        return QiitaListItem(
                          qiitaItem: value[index],
                          qiitaItemTapped: (String id) {
                            _navigateToDetail(id);
                          },
                        );
                      },
                    ),
                  ),
                ],
              )
            ],
          ),
        AsyncError() => const Center(
            child: Text('エラー発生'),
          ),
        AsyncLoading() => const Center(
            child: CircularProgressIndicator(),
          ),
        _ => throw Exception(),
      },
    );
  }
}
