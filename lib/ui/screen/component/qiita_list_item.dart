import 'package:flutter/material.dart';
import 'package:go_router_sample/domain/qiita_item.dart';

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
