// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'snippet_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SnippetData _$$_SnippetDataFromJson(Map<String, dynamic> json) =>
    _$_SnippetData(
      prefix: json['prefix'] as String,
      description: json['description'] as String,
      body: (json['body'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_SnippetDataToJson(_$_SnippetData instance) =>
    <String, dynamic>{
      'prefix': instance.prefix,
      'description': instance.description,
      'body': instance.body,
    };
