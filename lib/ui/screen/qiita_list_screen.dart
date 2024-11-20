import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router_sample/domain/qiita_item.dart';
import 'package:go_router_sample/domain/qiita_item_repository.dart';

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

class QiitaListItem extends StatelessWidget {
  const QiitaListItem({
    required QiitaItem qiitaItem,
    required void Function(String id) qiitaItemTapped,
    super.key,
  })  : _qiitaItem = qiitaItem,
        _qiitaItemTapped = qiitaItemTapped;

  final QiitaItem _qiitaItem;
  final void Function(String id) _qiitaItemTapped;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        _qiitaItemTapped(_qiitaItem.id);
      },
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(_qiitaItem.title),
                const SizedBox(
                  height: 4,
                ),
                Row(
                  children: [
                    const Icon(Icons.star),
                    const SizedBox(width: 4),
                    Text('${_qiitaItem.likesCount}'),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
