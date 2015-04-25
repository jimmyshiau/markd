library markdown.util;

import "package:rikulo_commons/util.dart" show XmlUtil;

/// Replaces `<`, `&`, and `>`, with their HTML entity equivalents.
String escapeHtml(String html) => XmlUtil.encode(html);

/// Removes null or empty values from [map].
void cleanMap(Map map) {
  map.keys.where((e) => isNullOrEmpty(map[e])).toList().forEach(map.remove);
}

/// Returns true if an object is null or an empty string.
bool isNullOrEmpty(object) {
  return object == null || object == '';
}
