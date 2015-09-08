library markdown.src.util;

import "package:rikulo_commons/util.dart" show XmlUtil;

/// Replaces `<`, `&`, and `>`, with their HTML entity equivalents.
String escapeHtml(String html) => XmlUtil.encode(html);
