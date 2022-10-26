/*
 * Modified work: Copyright 2020 Ali Ahamed Thowfeek
 * Original work: Copyright 2019 Ashraff Hathibelagal
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:xml/xml_events.dart';

import './utils.dart';

class _Tag {
  _Tag(this.name, this.styles, this.overrideStyle);

  String name;
  String styles;
  TextStyle? overrideStyle;
}

/// This class is at the core of the simple_html_css package . It has most of
/// the methods required to convert HTML content into Flutter widgets
class Parser {
  Parser(
    this.context,
    String data, {
    this.defaultTextStyle,
    this.linksCallback,
    this.overrideStyleMap,
  }) {
    _events = parseEvents(data);
  }

  final List<_Tag> _stack = <_Tag>[];
  Iterable<XmlEvent> _events = <XmlEvent>[];
  final BuildContext context;
  final Function(dynamic)? linksCallback;
  final Map<String, TextStyle>? overrideStyleMap;

  final TextStyle? defaultTextStyle;

  TextSpan _getTextSpan(String text, String style, TextStyle overrideStyle) {
    final Iterable<String> rules =
        style.split(';').where((String item) => item.trim().isNotEmpty);
    TextStyle textStyle = DefaultTextStyle.of(context).style;
    textStyle = textStyle.apply(color: const Color(0xff000000));
    textStyle = textStyle.merge(defaultTextStyle);

    bool isLink = false;
    String link = '';
    for (final String rule in rules) {
      if (rule.contains(':')) {
        final List<String> parts = rule.split(':');
        final String name = parts[0].trim();
        final String value = parts[1].trim();
        switch (name.toLowerCase()) {
          case 'color':
            textStyle = StyleGenUtils.addFontColor(textStyle, value);
            break;

          case 'background-color':
            textStyle = StyleGenUtils.addBgColor(textStyle, value);
            break;

          case 'font-weight':
            textStyle = StyleGenUtils.addFontWeight(textStyle, value);
            break;

          case 'font-style':
            textStyle = StyleGenUtils.addFontStyle(textStyle, value);
            break;

          case 'font-size':
            textStyle = StyleGenUtils.addFontSize(textStyle, value);
            break;

          case 'text-decoration':
            textStyle = StyleGenUtils.addTextDecoration(textStyle, value);
            break;

          case 'font-family':
            textStyle = StyleGenUtils.addFontFamily(textStyle, value);
            break;

          case 'line-height':
            textStyle = StyleGenUtils.addLineHeight(textStyle, value);
            break;

          // dropping partial support for li bullets
          // case 'list_item':
          // text = '• ' + text;
          // break;

          case 'visit_link':
            isLink = true;
            link = TextGenUtils.getLink(value);
            break;
        }
      }
    }

    textStyle = textStyle.merge(overrideStyle);

    if (isLink) {
      return TextSpan(
        style: textStyle,
        text: text,
        recognizer: TapGestureRecognizer()
          ..onTap = () {
            if (linksCallback != null) {
              linksCallback!(link);
            } else {
              debugPrint('Add a link callback to visit ${link.toString()}');
            }
          },
      );
    }
    return TextSpan(style: textStyle, text: text);
  }

  TextSpan _handleText(String text) {
    String string = text;
    string = TextGenUtils.strip(string);
    if (string.isEmpty) return const TextSpan(text: '');
    final StringBuffer style = StringBuffer();
    TextStyle textStyle = const TextStyle();
    for (final _Tag tag in _stack) {
      style.write('${tag.styles};');
      textStyle = textStyle.merge(tag.overrideStyle);
    }
    return _getTextSpan(string, style.toString(), textStyle);
  }

  /// Converts HTML content to a list of [TextSpan] objects
  List<TextSpan> parse() {
    List<TextSpan> spans = <TextSpan>[];
    bool isBulletList = false;
    bool isNumericList = false;
    int numericListCounter = 1;

    for (final XmlEvent event in _events) {
      if (event is XmlStartElementEvent) {
        // List tag formatting
        if (event.name == 'ol') {
          isNumericList = true;
        } else if (event.name == 'ul') {
          isBulletList = true;
        } else if (event.name == 'li') {
          if (isBulletList) {
            spans.add(TextSpan(text: '• ', style: defaultTextStyle));
          } else if (isNumericList) {
            spans.add(TextSpan(
                text: '$numericListCounter. ', style: defaultTextStyle));
            numericListCounter++;
          }
        }

        if (!event.isSelfClosing) {
          String styles = '';
          final String tagName = event.name.toLowerCase();
          TextStyle? overrideStyles;
          final double? defaultFontSize = defaultTextStyle?.fontSize;

          if (overrideStyleMap?.containsKey(tagName) == true) {
            overrideStyles = overrideStyleMap?[tagName];
          }

          switch (tagName) {
            case 'h1':
              double h1;
              if (defaultFontSize == null) {
                h1 = Theme.of(context).textTheme.headline5?.fontSize ?? 24.0;
              } else {
                h1 = defaultFontSize * 2;
              }
              styles = 'font-size: ${h1}px;';
              break;

            case 'h2':
              double h2;
              if (defaultFontSize == null) {
                h2 = Theme.of(context).textTheme.headline6?.fontSize ?? 20.0;
              } else {
                h2 = defaultFontSize * 1.5;
              }
              styles = 'font-size: ${h2}px; font-weight: medium;';
              break;

            case 'h3':
              double h3;
              if (defaultFontSize == null) {
                h3 = Theme.of(context).textTheme.subtitle1?.fontSize ?? 16.0;
              } else {
                h3 = defaultFontSize * 1.17;
              }
              styles = 'font-size: ${h3}px;';
              break;

            case 'h4':
              double h4;
              if (defaultFontSize == null) {
                h4 = Theme.of(context).textTheme.bodyText1?.fontSize ?? 16.0;
              } else {
                h4 = defaultFontSize;
              }
              styles = 'font-size: ${h4}px; font-weight: medium;';
              break;

            case 'h5':
              double h5;
              if (defaultFontSize == null) {
                h5 = Theme.of(context).textTheme.bodyText1?.fontSize ?? 16.0;
              } else {
                h5 = defaultFontSize * .83;
              }
              styles = 'font-size: ${h5}px; font-weight: bold;';
              break;

            case 'h6':
              double h6;
              if (defaultFontSize == null) {
                h6 = Theme.of(context).textTheme.bodyText2?.fontSize ?? 14.0;
              } else {
                h6 = defaultFontSize * .67;
              }
              styles = 'font-size: ${h6}px; font-weight: bold;';
              break;

            case 'b':
              styles = 'font-weight: bold;';
              break;

            case 'strong':
              styles = 'font-weight: bold;';
              break;

            case 'i':
              styles = 'font-style: italic;';
              break;

            case 'em':
              styles = 'font-style: italic;';
              break;

            case 'u':
              styles = 'text-decoration: underline;';
              break;

            case 'strike':
              styles = 'text-decoration: line-through;';
              break;

            case 'del':
              styles = 'text-decoration: line-through;';
              break;

            case 's':
              styles = 'text-decoration: line-through;';
              break;

            case 'a':
              styles =
                  '''visit_link:__#TO_GET#__; text-decoration: underline; color: #4287f5;''';
              break;

// dropping partial support for ul-li bullets
//            case 'li':
//              styles = 'list_item:ul;';
//              break;
//              RichText(
//                text: TextSpan(
//                  text:'',
//                  style: TextStyle(color: Colors.black),
//                  children: <InlineSpan>[
//                    WidgetSpan(
//                        alignment: PlaceholderAlignment.baseline,
//                        baseline: TextBaseline.alphabetic,
//                        child: Row(
//                          crossAxisAlignment: CrossAxisAlignment.start,
//                          children: <Widget>[
//                            Text( '• '),
//                            SizedBox(width: 20,),
//                            Expanded(child: Text('Example text',)),
//                          ],
//                        )
//                    ),
//                  ],
//                ),
//              )
          }

          for (final XmlEventAttribute attribute in event.attributes) {
            if (attribute.name == 'style') {
              styles = '$styles;${attribute.value}';
            } else if (attribute.name == 'href') {
              styles = styles.replaceFirst('__#TO_GET#__',
                  attribute.value.replaceAll(':', '__#COLON#__'));
            }
          }
          _stack.add(_Tag(event.name, styles, overrideStyles));
        } else {
          if (event.name == 'br') {
            spans.add(const TextSpan(text: '\n'));
          }
        }
      }

      // TODO: see if there is a better way to add space after these tags
      // maybe use widget spans
      if (event is XmlEndElementEvent) {
        if (event.name == 'p' ||
            event.name == 'h1' ||
            event.name == 'h2' ||
            event.name == 'h3' ||
            event.name == 'h4' ||
            event.name == 'h5' ||
            event.name == 'h6' ||
            event.name == 'div') {
          spans.add(const TextSpan(text: '\n\n'));
        } else if (event.name == 'li') {
          spans.add(const TextSpan(text: '\n'));
        } else if (event.name == 'ul' || event.name == 'ol') {
          spans.add(const TextSpan(text: '\n'));
        }

        if (_stack.isNotEmpty) {
          final _Tag top = _stack.removeLast();
          if (top.name != event.name) {
            debugPrint('Malformed HTML');
            return const <TextSpan>[];
          }
        } else {
          debugPrint('Malformed HTML. Starting TAG missing');
        }
      }

      if (event is XmlTextEvent) {
        final TextSpan currentSpan = _handleText(event.text);
        if (currentSpan.text?.isNotEmpty == true) {
          spans.add(currentSpan);
        }
      }

      // List tag formatting
      if (event is XmlEndElementEvent) {
        if (event.name == 'ol') {
          isNumericList = false;
          numericListCounter = 1;
        }
        if (event.name == 'ul') {
          isBulletList = false;
        }
      }
    }

    // removing all extra new line textSpans to avoid space at the bottom
    if (spans.isNotEmpty) {
      final List<TextSpan> reversed = spans.reversed.toList();

      while (reversed.isNotEmpty &&
          (reversed.first.text == '\n\n' || reversed.first.text == '\n')) {
        reversed.removeAt(0);
      }

      spans = reversed.reversed.toList();
    } else {
      debugPrint('Empty HTML content');
    }
    return spans;
  }
}
