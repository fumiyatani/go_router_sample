import 'package:freezed_annotation/freezed_annotation.dart';

part 'qiita_item.freezed.dart'; // freezedが生成するコード
part 'qiita_item.g.dart'; // json_serializable用のコード

@freezed
class QiitaItem with _$QiitaItem {
  const factory QiitaItem({
    required String id,
    required String title,
    @JsonKey(name: 'likes_count') required int likesCount,
  }) = _QiitaItem;

  // JSON 変換のサポートを追加（必要に応じて）
  factory QiitaItem.fromJson(Map<String, dynamic> json) =>
      _$QiitaItemFromJson(json);
}
