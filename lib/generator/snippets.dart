import 'dart:convert';
import 'dart:io';

import 'package:pure/pure.dart';
import 'package:snippet_generator/shared/json.dart';
import 'package:snippet_generator/shared/snippet_info.dart';

File get _snippetsFile => File('global.code-snippets');

Future<void> _writeResult(Json result) =>
    jsonEncode(result).pipe(_snippetsFile.writeAsString);

Json _appendSnippet(Json result, SnippetInfo info) => {
      ...result,
      '${info.snippetName} (${info.scopeName})': info.toSnippetJson(),
    };

Future<void> generator(Stream<SnippetInfo> snippets) =>
    snippets.fold<Json>(const {}, _appendSnippet).then(_writeResult);
