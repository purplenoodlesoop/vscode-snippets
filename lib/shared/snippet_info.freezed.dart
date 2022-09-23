// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'snippet_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SnippetInfo {
  String get scope => throw _privateConstructorUsedError;
  String get fileName => throw _privateConstructorUsedError;
  SnippetData get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SnippetInfoCopyWith<SnippetInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SnippetInfoCopyWith<$Res> {
  factory $SnippetInfoCopyWith(
          SnippetInfo value, $Res Function(SnippetInfo) then) =
      _$SnippetInfoCopyWithImpl<$Res>;
  $Res call({String scope, String fileName, SnippetData data});

  $SnippetDataCopyWith<$Res> get data;
}

/// @nodoc
class _$SnippetInfoCopyWithImpl<$Res> implements $SnippetInfoCopyWith<$Res> {
  _$SnippetInfoCopyWithImpl(this._value, this._then);

  final SnippetInfo _value;
  // ignore: unused_field
  final $Res Function(SnippetInfo) _then;

  @override
  $Res call({
    Object? scope = freezed,
    Object? fileName = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      scope: scope == freezed
          ? _value.scope
          : scope // ignore: cast_nullable_to_non_nullable
              as String,
      fileName: fileName == freezed
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SnippetData,
    ));
  }

  @override
  $SnippetDataCopyWith<$Res> get data {
    return $SnippetDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$$_SnippetInfoCopyWith<$Res>
    implements $SnippetInfoCopyWith<$Res> {
  factory _$$_SnippetInfoCopyWith(
          _$_SnippetInfo value, $Res Function(_$_SnippetInfo) then) =
      __$$_SnippetInfoCopyWithImpl<$Res>;
  @override
  $Res call({String scope, String fileName, SnippetData data});

  @override
  $SnippetDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_SnippetInfoCopyWithImpl<$Res> extends _$SnippetInfoCopyWithImpl<$Res>
    implements _$$_SnippetInfoCopyWith<$Res> {
  __$$_SnippetInfoCopyWithImpl(
      _$_SnippetInfo _value, $Res Function(_$_SnippetInfo) _then)
      : super(_value, (v) => _then(v as _$_SnippetInfo));

  @override
  _$_SnippetInfo get _value => super._value as _$_SnippetInfo;

  @override
  $Res call({
    Object? scope = freezed,
    Object? fileName = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_SnippetInfo(
      scope: scope == freezed
          ? _value.scope
          : scope // ignore: cast_nullable_to_non_nullable
              as String,
      fileName: fileName == freezed
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SnippetData,
    ));
  }
}

/// @nodoc

class _$_SnippetInfo extends _SnippetInfo {
  const _$_SnippetInfo(
      {required this.scope, required this.fileName, required this.data})
      : super._();

  @override
  final String scope;
  @override
  final String fileName;
  @override
  final SnippetData data;

  @override
  String toString() {
    return 'SnippetInfo(scope: $scope, fileName: $fileName, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SnippetInfo &&
            const DeepCollectionEquality().equals(other.scope, scope) &&
            const DeepCollectionEquality().equals(other.fileName, fileName) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(scope),
      const DeepCollectionEquality().hash(fileName),
      const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$$_SnippetInfoCopyWith<_$_SnippetInfo> get copyWith =>
      __$$_SnippetInfoCopyWithImpl<_$_SnippetInfo>(this, _$identity);
}

abstract class _SnippetInfo extends SnippetInfo {
  const factory _SnippetInfo(
      {required final String scope,
      required final String fileName,
      required final SnippetData data}) = _$_SnippetInfo;
  const _SnippetInfo._() : super._();

  @override
  String get scope;
  @override
  String get fileName;
  @override
  SnippetData get data;
  @override
  @JsonKey(ignore: true)
  _$$_SnippetInfoCopyWith<_$_SnippetInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
