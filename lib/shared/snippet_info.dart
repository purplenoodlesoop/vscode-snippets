import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:snippet_generator/shared/json.dart';
import 'package:snippet_generator/shared/snippet_data.dart';

part 'snippet_info.freezed.dart';

extension on String {
  String uppercased() => this[0].toUpperCase() + substring(1);
}

@freezed
class SnippetInfo with _$SnippetInfo {
  const factory SnippetInfo({
    required String scope,
    required String fileName,
    required SnippetData data,
  }) = _SnippetInfo;

  const SnippetInfo._();

  String get scopeName => scope.uppercased();

  String get snippetName =>
      fileName.split('.').first.replaceAll('_', ' ').uppercased();

  Json toSnippetJson() {
    final json = data.toJson();

    if (scope.isEmpty || scope == 'global') return json;

    json['scope'] = scope == 'flutter' ? 'flutter, dart' : scope;

    return json;
  }
}
