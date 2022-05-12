import 'dart:collection';
import 'dart:io';

import 'package:pure/pure.dart';
import 'package:snippet_generator/shared/snippet_info.dart';

typedef _Data = Map<String, List<SnippetInfo>>;

extension on StringBuffer {
  void writeLink(String name) {
    write('- [');
    write(name);
    write('](#');
    write(name.toLowerCase().split(' ').join('-'));
    writeln(')');
  }

  void writeIndex(_Data data) {
    for (final entry in data.entries) {
      writeLink(entry.key);
      for (final snippet in entry.value) {
        write('  ');
        writeLink(snippet.name.removeScope());
      }
    }
    writeln();
  }

  void writeSection(String prefix, String name) {
    write(prefix);
    write(' ');
    writeln(name);
    writeln();
  }

  void writeContents(_Data data) {
    for (final entry in data.entries) {
      writeSection('##', entry.key);
      for (final snippet in entry.value) {
        final json = snippet.json;
        writeSection('###', snippet.name.removeScope());
        writeln(json['description']);
        writeln();
        writeSection('####', 'Prefix');
        write('`');
        write(json['prefix']);
        writeln('`');
        writeln();
        writeSection('####', 'Body');
        write('```');
        writeln(_extractScope(json['scope']));
        writeln(_extractBody(json['body']));
        writeln('```');
      }
    }
  }
}

String _extractScope(Object? scope) {
  if (scope == 'flutter') return 'dart';
  return scope?.toString() ?? '';
}

String? _extractBody(Object? body) {
  if (body is String) return body;
  if (body is List<dynamic>) return body.cast<String>().join('\n');
  return null;
}

extension on String {
  String removeScope() =>
      split(' ').where((element) => !element.contains('(')).join(' ');
}

_Data _categorizeSnippets(List<SnippetInfo> snippets) {
  final sortedContent = List.of(snippets)
    ..sort((a, b) => a.name.compareTo(b.name))
    ..sort((a, b) => a.scope.compareTo(b.scope));

  final indexData = <String, List<SnippetInfo>>{};

  for (final snippet in sortedContent) {
    indexData
        .putIfAbsent(snippet.uppercasedScope.removeScope(), () => [])
        .add(snippet);
  }

  return UnmodifiableMapView(indexData);
}

String _contentToMarkdown(List<SnippetInfo> snippets) {
  final buffer = StringBuffer()
    ..writeln('# Snippets description')
    ..writeln()
    ..writeln('This file is auto-generated')
    ..writeln()
    ..writeln('## Index');

  [
    buffer.writeIndex,
    buffer.writeContents,
  ].forEach(_categorizeSnippets(snippets).pipe);

  return buffer.toString();
}

File get _documentationFile => File('snippets.md');

Future<void> generator(Stream<SnippetInfo> snippets) => snippets
    .toList()
    .then(_contentToMarkdown)
    .then(_documentationFile.writeAsString);
