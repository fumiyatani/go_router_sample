import 'package:freezed_annotation/freezed_annotation.dart';

part 'qiita_item.freezed.dart';

@freezed
class QiitaItem with _$QiitaItem {
  const factory QiitaItem({
    required String id,
    required String title,
    required int likesCount,
  }) = _QiitaItem;
}
