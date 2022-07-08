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

import 'package:flutter/material.dart';

import 'css_named_colors.dart';

/// Has utility methods to manipulate HTML text nodes
class TextGenUtils {
  /// Removes extra whitespace
  static String strip(String text) {
    String string = text;
    bool hasSpaceAfter = false;
    bool hasSpaceBefore = false;
    if (string.startsWith(' ')) {
      hasSpaceBefore = true;
    }
    if (string.endsWith(' ')) {
      hasSpaceAfter = true;
    }
    string = string.trim();
    if (hasSpaceBefore) string = ' $string';
    if (hasSpaceAfter) string = '$string ';
    return string;
  }

  /// Returns the link of an anchor tag
  static String getLink(String value) {
    return value.replaceAll('__#COLON#__', ':');
  }
}

/// Has utility methods to convert CSS to [TextStyle] objects
class StyleGenUtils {
  /// Creates a [TextStyle] to handle CSS font-weight
  static TextStyle addFontWeight(TextStyle textStyle, String value) {
    final List<String> supportedNumValues = <String>[
      '100',
      '200',
      '300',
      '400',
      '500',
      '600',
      '700',
      '800',
      '900',
    ];
    if (supportedNumValues.contains(value)) {
      return textStyle.copyWith(
          fontWeight: FontWeight.values[supportedNumValues.indexOf(value)]);
    }

    switch (value.toLowerCase()) {
      case 'normal':
        return textStyle.copyWith(fontWeight: FontWeight.normal);
      case 'medium':
        return textStyle.copyWith(fontWeight: FontWeight.w500);
      case 'bold':
        return textStyle.copyWith(fontWeight: FontWeight.bold);
      default:
        return textStyle.copyWith(fontWeight: FontWeight.bold);
    }
  }

  // Need to support HSL and HSLA
  static Color _convertColor(String value) {
    try {
      if (value.contains('rgba')) {
        final List<String> values = value
            .substring(value.indexOf('(') + 1, value.indexOf(')'))
            .split(',');
        final int r = int.tryParse(values[0]) ?? 0;
        final int g = int.tryParse(values[1]) ?? 0;
        final int b = int.tryParse(values[2]) ?? 0;
        final double o = double.tryParse(values[3]) ?? 0;
        return Color.fromRGBO(r, g, b, o);
      } else if (value.contains('rgb')) {
        final List<String> values = value
            .substring(value.indexOf('(') + 1, value.indexOf(')'))
            .split(',');
        final int r = int.tryParse(values[0]) ?? 0;
        final int g = int.tryParse(values[1]) ?? 0;
        final int b = int.tryParse(values[2]) ?? 0;

        return Color.fromRGBO(r, g, b, 1);
      } else if (value.contains('#')) {
        int colorHex = 0xff000000;
        if (value.length == 7) {
          colorHex = int.parse(value.replaceAll('#', '0xff'));
        } else if (value.length == 9) {
          colorHex = int.parse(value.replaceAll('#', '0x'));
        } else if (value.length == 4) {
          String val = value;
          val = val.replaceFirst('#', '');
          val = val.split('').map((String c) => '$c$c').join();
          colorHex = int.parse('0xff$val');
        }
        return Color(colorHex);
      } else {
        return CssNamedColors().getColor(value);
      }
    } catch (error) {
      debugPrint(error.toString());
      return Colors.grey;
    }
  }

  /// Creates a [TextStyle] to handle CSS color
  static TextStyle addFontColor(TextStyle textStyle, String value) {
    return textStyle.copyWith(color: _convertColor(value));
  }

  /// Creates a [TextStyle] to handle CSS background
  static TextStyle addBgColor(TextStyle textStyle, String value) {
    final Paint paint = Paint();
    paint.color = _convertColor(value);
    return textStyle.copyWith(background: paint);
  }

  static TextStyle addFontStyle(TextStyle textStyle, String value) {
    if (value == 'italic') {
      return textStyle.copyWith(fontStyle: FontStyle.italic);
    } else if (value == 'normal') {
      return textStyle.copyWith(fontStyle: FontStyle.normal);
    }
    return textStyle;
  }

  /// Creates a [TextStyle] to handle CSS font-family
  static TextStyle addFontFamily(TextStyle textStyle, String value) {
    return textStyle.copyWith(fontFamily: value);
  }

  /// Creates a [TextStyle] to handle CSS font-size
  static TextStyle addFontSize(TextStyle textStyle, String value) {
    double number = 14.0;
    try {
      if (value.endsWith('px')) {
        number = double.parse(value.replaceAll('px', '').trim());
      } else if (value.endsWith('em')) {
        number *= double.parse(value.replaceAll('em', '').trim());
      }
      return textStyle.copyWith(fontSize: number);
    } catch (error) {
      debugPrint(error.toString());
      return textStyle.copyWith(fontSize: number);
    }
  }

  /// Creates a [TextStyle] to handle CSS text-decoration
  static TextStyle addTextDecoration(TextStyle textStyle, String value) {
    TextStyle style = textStyle;
    if (value.contains('none')) {
      return style.copyWith(decoration: TextDecoration.none);
    }
    if (value.contains('underline')) {
      style = style.copyWith(decoration: TextDecoration.underline);
    }
    if (value.contains('overline')) {
      style = style.copyWith(decoration: TextDecoration.overline);
    }
    if (value.contains('line-through')) {
      style = style.copyWith(decoration: TextDecoration.lineThrough);
    }
    if (value.contains('dotted')) {
      style = style.copyWith(decorationStyle: TextDecorationStyle.dotted);
    } else if (value.contains('dashed')) {
      style = style.copyWith(decorationStyle: TextDecorationStyle.dashed);
    } else if (value.contains('wavy')) {
      style = style.copyWith(decorationStyle: TextDecorationStyle.wavy);
    }
    return style;
  }

  /// Creates a [TextStyle] to handle CSS line-height
  static TextStyle addLineHeight(TextStyle textStyle, String value) {
    try {
      return textStyle.copyWith(height: double.parse(value));
    } catch (_) {
      return textStyle;
    }
  }
}
