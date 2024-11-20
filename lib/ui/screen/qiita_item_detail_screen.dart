import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router_sample/domain/qiita_item.dart';
import 'package:go_router_sample/domain/qiita_item_repository.dart';

final qiitaItemProvider =
    FutureProvider.family<QiitaItem, String>((ref, id) async {
  final repository = ref.watch(qiitaItemRepository);
  return await repository.getItem(id);
});

class QiitaItemDetailScreen extends ConsumerWidget {
  const QiitaItemDetailScreen({
    required String itemId,
    super.key,
  }) : _itemId = itemId;

  final String _itemId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final qiitaItem = ref.watch(qiitaItemProvider(_itemId));

    final body = switch (qiitaItem) {
      AsyncData(:final value) => Center(
          child: Column(
            children: [
              Text(value.title),
              const SizedBox(
                height: 8,
              ),
              Text('${value.likesCount}'),
            ],
          ),
        ),
      AsyncError() => const Center(
          child: Text('エラー発生'),
        ),
      AsyncLoading() => const Center(
          child: CircularProgressIndicator(),
        ),
      _ => throw Exception(),
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('詳細'),
      ),
      body: body,
    );
  }
}
