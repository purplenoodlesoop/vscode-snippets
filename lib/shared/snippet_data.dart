import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:snippet_generator/shared/json.dart';

part 'snippet_data.freezed.dart';
part 'snippet_data.g.dart';

@freezed
class SnippetData with _$SnippetData {
  factory SnippetData({
    required String prefix,
    required String description,
    required List<String> body,
  }) = _SnippetData;

  factory SnippetData.fromJson(Json json) => _$SnippetDataFromJson(json);
}
