// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'snippet_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SnippetData _$SnippetDataFromJson(Map<String, dynamic> json) {
  return _SnippetData.fromJson(json);
}

/// @nodoc
mixin _$SnippetData {
  String get prefix => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<String> get body => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SnippetDataCopyWith<SnippetData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SnippetDataCopyWith<$Res> {
  factory $SnippetDataCopyWith(
          SnippetData value, $Res Function(SnippetData) then) =
      _$SnippetDataCopyWithImpl<$Res>;
  $Res call({String prefix, String description, List<String> body});
}

/// @nodoc
class _$SnippetDataCopyWithImpl<$Res> implements $SnippetDataCopyWith<$Res> {
  _$SnippetDataCopyWithImpl(this._value, this._then);

  final SnippetData _value;
  // ignore: unused_field
  final $Res Function(SnippetData) _then;

  @override
  $Res call({
    Object? prefix = freezed,
    Object? description = freezed,
    Object? body = freezed,
  }) {
    return _then(_value.copyWith(
      prefix: prefix == freezed
          ? _value.prefix
          : prefix // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$$_SnippetDataCopyWith<$Res>
    implements $SnippetDataCopyWith<$Res> {
  factory _$$_SnippetDataCopyWith(
          _$_SnippetData value, $Res Function(_$_SnippetData) then) =
      __$$_SnippetDataCopyWithImpl<$Res>;
  @override
  $Res call({String prefix, String description, List<String> body});
}

/// @nodoc
class __$$_SnippetDataCopyWithImpl<$Res> extends _$SnippetDataCopyWithImpl<$Res>
    implements _$$_SnippetDataCopyWith<$Res> {
  __$$_SnippetDataCopyWithImpl(
      _$_SnippetData _value, $Res Function(_$_SnippetData) _then)
      : super(_value, (v) => _then(v as _$_SnippetData));

  @override
  _$_SnippetData get _value => super._value as _$_SnippetData;

  @override
  $Res call({
    Object? prefix = freezed,
    Object? description = freezed,
    Object? body = freezed,
  }) {
    return _then(_$_SnippetData(
      prefix: prefix == freezed
          ? _value.prefix
          : prefix // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      body: body == freezed
          ? _value._body
          : body // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SnippetData implements _SnippetData {
  _$_SnippetData(
      {required this.prefix,
      required this.description,
      required final List<String> body})
      : _body = body;

  factory _$_SnippetData.fromJson(Map<String, dynamic> json) =>
      _$$_SnippetDataFromJson(json);

  @override
  final String prefix;
  @override
  final String description;
  final List<String> _body;
  @override
  List<String> get body {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_body);
  }

  @override
  String toString() {
    return 'SnippetData(prefix: $prefix, description: $description, body: $body)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SnippetData &&
            const DeepCollectionEquality().equals(other.prefix, prefix) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other._body, _body));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(prefix),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(_body));

  @JsonKey(ignore: true)
  @override
  _$$_SnippetDataCopyWith<_$_SnippetData> get copyWith =>
      __$$_SnippetDataCopyWithImpl<_$_SnippetData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SnippetDataToJson(
      this,
    );
  }
}

abstract class _SnippetData implements SnippetData {
  factory _SnippetData(
      {required final String prefix,
      required final String description,
      required final List<String> body}) = _$_SnippetData;

  factory _SnippetData.fromJson(Map<String, dynamic> json) =
      _$_SnippetData.fromJson;

  @override
  String get prefix;
  @override
  String get description;
  @override
  List<String> get body;
  @override
  @JsonKey(ignore: true)
  _$$_SnippetDataCopyWith<_$_SnippetData> get copyWith =>
      throw _privateConstructorUsedError;
}
