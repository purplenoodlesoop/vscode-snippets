import 'dart:convert';
import 'dart:io';
import 'package:pure/pure.dart';
import 'package:snippet_generator/shared/json.dart';
import 'package:snippet_generator/shared/snippet_data.dart';
import 'package:snippet_generator/shared/snippet_info.dart';
import 'package:stream_transform/stream_transform.dart';

extension on Directory {
  String get scope => uri.pathSegments.elementAt(1);
}

extension on File {
  String get name => uri.pathSegments.last;
}

Future<SnippetInfo> _extractInfo(String scope, File file) async {
  final fileContents = await file.readAsString();

  return SnippetInfo(
    scope: scope,
    fileName: file.name,
    data: SnippetData.fromJson(
      jsonDecode(fileContents) as Json,
    ),
  );
}

bool _isJson(File file) => file.path.endsWith('.json');

Stream<SnippetInfo> _extractSnippetsFromDirectory(Directory scopedDirectory) =>
    scopedDirectory
        .list(recursive: true)
        .whereType<File>()
        .where(_isJson)
        .concurrentAsyncMap(_extractInfo.curry(scopedDirectory.scope));

Stream<SnippetInfo> getAllSnippets(Directory directory) => directory
    .list()
    .whereType<Directory>()
    .concurrentAsyncExpand(_extractSnippetsFromDirectory);
