import 'dart:convert';

extension on String {
  String uppercased() => this[0].toUpperCase() + substring(1);

  String followedBy(String other) => this + other;
}

typedef Json = Map<String, Object?>;

class SnippetInfo {
  final String scope;
  final String filename;
  final String contents;

  const SnippetInfo({
    required this.scope,
    required this.filename,
    required this.contents,
  });

  String get uppercasedScope => scope.uppercased();

  String get name => filename
      .split('.')
      .first
      .split('_')
      .join(' ')
      .uppercased()
      .followedBy(' ($uppercasedScope)');

  Json get json {
    final json = jsonDecode(contents) as Json;

    if (scope.isEmpty || scope == 'global') return json;

    json['scope'] = scope == 'flutter' ? 'flutter, dart' : scope;

    return json;
  }
}
