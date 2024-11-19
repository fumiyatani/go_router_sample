// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'qiita_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$QiitaItem {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  int get likesCount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QiitaItemCopyWith<QiitaItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QiitaItemCopyWith<$Res> {
  factory $QiitaItemCopyWith(QiitaItem value, $Res Function(QiitaItem) then) =
      _$QiitaItemCopyWithImpl<$Res, QiitaItem>;
  @useResult
  $Res call({String id, String title, int likesCount});
}

/// @nodoc
class _$QiitaItemCopyWithImpl<$Res, $Val extends QiitaItem>
    implements $QiitaItemCopyWith<$Res> {
  _$QiitaItemCopyWithImpl(this._value, this._then);

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
abstract class _$$QiitaItemImplCopyWith<$Res>
    implements $QiitaItemCopyWith<$Res> {
  factory _$$QiitaItemImplCopyWith(
          _$QiitaItemImpl value, $Res Function(_$QiitaItemImpl) then) =
      __$$QiitaItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String title, int likesCount});
}

/// @nodoc
class __$$QiitaItemImplCopyWithImpl<$Res>
    extends _$QiitaItemCopyWithImpl<$Res, _$QiitaItemImpl>
    implements _$$QiitaItemImplCopyWith<$Res> {
  __$$QiitaItemImplCopyWithImpl(
      _$QiitaItemImpl _value, $Res Function(_$QiitaItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? likesCount = null,
  }) {
    return _then(_$QiitaItemImpl(
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

class _$QiitaItemImpl implements _QiitaItem {
  const _$QiitaItemImpl(
      {required this.id, required this.title, required this.likesCount});

  @override
  final String id;
  @override
  final String title;
  @override
  final int likesCount;

  @override
  String toString() {
    return 'QiitaItem(id: $id, title: $title, likesCount: $likesCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QiitaItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.likesCount, likesCount) ||
                other.likesCount == likesCount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, title, likesCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QiitaItemImplCopyWith<_$QiitaItemImpl> get copyWith =>
      __$$QiitaItemImplCopyWithImpl<_$QiitaItemImpl>(this, _$identity);
}

abstract class _QiitaItem implements QiitaItem {
  const factory _QiitaItem(
      {required final String id,
      required final String title,
      required final int likesCount}) = _$QiitaItemImpl;

  @override
  String get id;
  @override
  String get title;
  @override
  int get likesCount;
  @override
  @JsonKey(ignore: true)
  _$$QiitaItemImplCopyWith<_$QiitaItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
