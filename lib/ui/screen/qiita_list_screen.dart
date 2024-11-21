import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router_sample/domain/qiita_item.dart';
import 'package:go_router_sample/domain/qiita_item_repository.dart';
import 'package:go_router_sample/ui/screen/component/qiita_list_item.dart';

final qiitaItemsProvider =
    FutureProvider.family<List<QiitaItem>, int?>((ref, page) async {
  final repository = ref.watch(qiitaItemRepository);
  return await repository.getItems(page);
});

class QiitaListNotifier extends Notifier<int?> {
  @override
  int? build() => null;

  void next() {
    if (state == null) {
      state = 1;
    } else {
      final currentPage = state ?? 1;
      state = currentPage + 1;
    }
  }
}

final qiitaListNotifierProvider =
    NotifierProvider<QiitaListNotifier, int?>(QiitaListNotifier.new);

class QiitaListScreen extends ConsumerWidget {
  const QiitaListScreen({
    super.key,
    required void Function(String id) navigateToDetail,
  }) : _navigateToDetail = navigateToDetail;

  final void Function(String id) _navigateToDetail;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final page = ref.watch(qiitaListNotifierProvider);
    final qiitaItems = ref.watch(qiitaItemsProvider(page));

    return Scaffold(
        appBar: AppBar(
          title: const Text('投稿一覧'),
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
        });
  }
}
