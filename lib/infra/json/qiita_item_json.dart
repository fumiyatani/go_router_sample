import 'package:freezed_annotation/freezed_annotation.dart';

part 'qiita_item_json.freezed.dart';
part 'qiita_item_json.g.dart';

@freezed
class QiitaItemJson with _$QiitaItemJson {
  const factory QiitaItemJson({
    required String id,
    required String title,
    @JsonKey(name: 'likes_count') required int likesCount,
  }) = _QiitaItemJson;

  // JSON 変換のサポートを追加（必要に応じて）
  factory QiitaItemJson.fromJson(Map<String, dynamic> json) =>
      _$QiitaItemJsonFromJson(json);
}
