// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'qiita_item_json.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QiitaItemJson _$QiitaItemJsonFromJson(Map<String, dynamic> json) {
  return _QiitaItemJson.fromJson(json);
}

/// @nodoc
mixin _$QiitaItemJson {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'likes_count')
  int get likesCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QiitaItemJsonCopyWith<QiitaItemJson> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QiitaItemJsonCopyWith<$Res> {
  factory $QiitaItemJsonCopyWith(
          QiitaItemJson value, $Res Function(QiitaItemJson) then) =
      _$QiitaItemJsonCopyWithImpl<$Res, QiitaItemJson>;
  @useResult
  $Res call(
      {String id, String title, @JsonKey(name: 'likes_count') int likesCount});
}

/// @nodoc
class _$QiitaItemJsonCopyWithImpl<$Res, $Val extends QiitaItemJson>
    implements $QiitaItemJsonCopyWith<$Res> {
  _$QiitaItemJsonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? likesCount = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      likesCount: null == likesCount
          ? _value.likesCount
          : likesCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QiitaItemJsonImplCopyWith<$Res>
    implements $QiitaItemJsonCopyWith<$Res> {
  factory _$$QiitaItemJsonImplCopyWith(
          _$QiitaItemJsonImpl value, $Res Function(_$QiitaItemJsonImpl) then) =
      __$$QiitaItemJsonImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id, String title, @JsonKey(name: 'likes_count') int likesCount});
}

/// @nodoc
class __$$QiitaItemJsonImplCopyWithImpl<$Res>
    extends _$QiitaItemJsonCopyWithImpl<$Res, _$QiitaItemJsonImpl>
    implements _$$QiitaItemJsonImplCopyWith<$Res> {
  __$$QiitaItemJsonImplCopyWithImpl(
      _$QiitaItemJsonImpl _value, $Res Function(_$QiitaItemJsonImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? likesCount = null,
  }) {
    return _then(_$QiitaItemJsonImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      likesCount: null == likesCount
          ? _value.likesCount
          : likesCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QiitaItemJsonImpl implements _QiitaItemJson {
  const _$QiitaItemJsonImpl(
      {required this.id,
      required this.title,
      @JsonKey(name: 'likes_count') required this.likesCount});

  factory _$QiitaItemJsonImpl.fromJson(Map<String, dynamic> json) =>
      _$$QiitaItemJsonImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  @JsonKey(name: 'likes_count')
  final int likesCount;

  @override
  String toString() {
    return 'QiitaItemJson(id: $id, title: $title, likesCount: $likesCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QiitaItemJsonImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.likesCount, likesCount) ||
                other.likesCount == likesCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, likesCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QiitaItemJsonImplCopyWith<_$QiitaItemJsonImpl> get copyWith =>
      __$$QiitaItemJsonImplCopyWithImpl<_$QiitaItemJsonImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QiitaItemJsonImplToJson(
      this,
    );
  }
}

abstract class _QiitaItemJson implements QiitaItemJson {
  const factory _QiitaItemJson(
          {required final String id,
          required final String title,
          @JsonKey(name: 'likes_count') required final int likesCount}) =
      _$QiitaItemJsonImpl;

  factory _QiitaItemJson.fromJson(Map<String, dynamic> json) =
      _$QiitaItemJsonImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  @JsonKey(name: 'likes_count')
  int get likesCount;
  @override
  @JsonKey(ignore: true)
  _$$QiitaItemJsonImplCopyWith<_$QiitaItemJsonImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
