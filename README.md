markd - Dart Markdown Library
=============================

A fork of [David Peek's dart-markdown](https://github.com/dpeek/dart-markdown)
for easy customization of Markdown syntaxes.

**Differences:**

1. `LinkResolver` replaces `Resolver` to provide more options.

2. `InlineSyntax` introduces additional argument, `caseSensitive`.

3. The header syntax requires a whitespace between `#` and the text, so `#foo` can represent a link (like Github does). For example, `# foo` is a header, while `#foo` is not.


Usage
-----

[You can find the installation directions here.][installing]

```dart
import 'package:markdown/markdown.dart' show markdownToHtml;

main() {
  print(markdownToHtml('Hello *Markdown*'));
  //=> <p>Hello <em>Markdown</em></p>
}
```

You can create and use your own syntaxes!

```dart
import 'package:markdown/markdown.dart';

main() {
  List<InlineSyntax> syntaxes = [new TextSyntax('nyan', sub: '~=[,,_,,]:3')];
  print(markdownToHtml('nyan', inlineSyntaxes: syntaxes));
  //=> <p>~=[,,_,,]:3</p>
}
```
[You can find the documentation for this library here.][documentation]

[installing]: http://pub.dartlang.org/packages/markdown#installing
[documentation]: http://www.dartdocs.org/documentation/markdown/0.7.0/index.html
