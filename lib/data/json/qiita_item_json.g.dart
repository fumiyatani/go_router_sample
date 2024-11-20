// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'qiita_item_json.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QiitaItemJsonImpl _$$QiitaItemJsonImplFromJson(Map<String, dynamic> json) =>
    _$QiitaItemJsonImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      likesCount: (json['likes_count'] as num).toInt(),
    );

Map<String, dynamic> _$$QiitaItemJsonImplToJson(_$QiitaItemJsonImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'likes_count': instance.likesCount,
    };
