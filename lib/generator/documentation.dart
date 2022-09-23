import 'dart:io';

import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:md/md.dart';
import 'package:pure/pure.dart';
import 'package:snippet_generator/shared/snippet_info.dart';

/// Scope: Snippets
typedef _Snippets = IMap<String, IList<SnippetInfo>>;

Markdown _snippetEntry(SnippetInfo snippet) {
  final data = snippet.data;
  final scope = snippet.scope;

  return Markdown.section(
    header: snippet.snippetName,
    children: [
      Markdown.text(data: data.description),
      const Markdown.text(data: ''),
      Markdown.section(
        header: 'Prefix',
        children: [
          Markdown.text(
            data: data.prefix,
            style: TextStyle.code,
          ),
        ],
      ),
      Markdown.section(
        header: 'Body',
        children: [
          Markdown.code(
            language: scope == 'flutter' ? 'dart' : scope,
            data: data.body,
          )
        ],
      ),
    ],
  );
}

Markdown _indexSnippetEntry(SnippetInfo snippet) {
  final name = snippet.snippetName;
  final link = name.toLowerCase().replaceAll(' ', '-');

  return Markdown.link(
    label: name,
    destination: '#$link',
  );
}

Markdown _scopedIndexEntry(MapEntry<String, IList<SnippetInfo>> entry) {
  final scope = entry.key;
  final link = scope.toLowerCase();

  return Markdown.list(
    style: ListStyle.unordered,
    children: [
      Markdown.link(label: scope, destination: '#$link'),
      Markdown.list(
        style: ListStyle.unordered,
        children: entry.value.map(_indexSnippetEntry).toList(),
      ),
    ],
  );
}

Markdown _index(_Snippets snippets) => Markdown.section(
      header: 'Index',
      children: snippets.entries.map(_scopedIndexEntry).toList(),
    );

List<Markdown> _snippets(_Snippets snippets) => snippets.entries
    .map(
      (entry) => Markdown.section(
        header: entry.key,
        children: entry.value.map(_snippetEntry).toList(),
      ),
    )
    .toList();

Markdown _documentation(_Snippets snippets) => Markdown.section(
      header: 'Snippets description',
      children: [
        const Markdown.text(data: 'This file is auto-generated'),
        const Markdown.text(data: ''),
        _index(snippets),
        ..._snippets(snippets),
      ],
    );

_Snippets _categorizeSnippet(_Snippets snippets, SnippetInfo snippet) {
  final scopeName = snippet.scopeName;

  return IMap({
    ...snippets.unlock,
    scopeName: IList([
      ...?snippets[scopeName],
      snippet,
    ])
  });
}

File get _file => File('snippets.md');

Future<void> generator(Stream<SnippetInfo> snippets) async {
  final snippetsList = await snippets.toList();

  return snippetsList
      .toIList()
      .sort((a, b) => a.snippetName.compareTo(b.snippetName))
      .sort((a, b) => a.scope.compareTo(b.scope))
      .fold<_Snippets>(IMap(), _categorizeSnippet)
      .pipe(_documentation)
      .pipe(renderNode)
      .pipe(_file.writeAsString);
}
