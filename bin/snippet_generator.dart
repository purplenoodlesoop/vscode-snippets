import 'dart:io';

import 'package:snippet_generator/generator/documentation.dart'
    as documentation;
import 'package:snippet_generator/generator/snippets.dart' as snippets;
import 'package:snippet_generator/shared/get_all_snippets.dart';

void main(List<String> arguments) {
  const generators = [snippets.generator, documentation.generator];
  final snippetsStream =
      getAllSnippets(Directory(arguments.first)).asBroadcastStream();

  for (final generator in generators) {
    generator(snippetsStream);
  }
}
