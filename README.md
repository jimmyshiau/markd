Dart Markdown Library
=====================

A fork of [David Peek's dart-markdown](https://github.com/dpeek/dart-markdown)
for easy customization of Markdown syntaxes.

**Differences:**

1. `LinkResolver` replaces `Resolver` to provide more options.

2. `InlineSyntax` introduces additional argument called `caseSensitive`.

3. The header syntax requires a whitespace between `#` and the text. For example, `# foo` is a header, while `#foo` is not.


Installation
------------

Add this to your `pubspec.yaml` (or create it):

```yaml
dependencies:
  markd: any
```

Then run the [Pub Package Manager][pub] (comes with the Dart SDK):

    pub install

Usage
-----

```dart
import 'package:markdown/markdown.dart' show markdownToHtml;

main() {
  print(markdownToHtml('Hello *Markdown*'));
}
```

[pub]: http://www.dartlang.org/docs/pub-package-manager
