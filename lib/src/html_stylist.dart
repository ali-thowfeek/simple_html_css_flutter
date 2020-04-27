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

import 'package:html_unescape/html_unescape_small.dart';

import './internals.dart';
import 'package:flutter/material.dart';

/// This class is the only class you should be using from the
/// simple_html_css package. It contains all the methods you need to
/// handle your HTML and CSS.
class HTML {
  /// Returns a [TextSpan] object you can directly pass to a [RichText]
  /// widget. In addition to the build context and your HTML content, you can
  /// pass a function to this method. You can use the function to handle
  /// click events on anchor tags. The function will receive the actual link
  /// as its argument.
  ///
  /// To overrides and/or apply custom styles to all html tags
  /// pass in [overrideStyle] which is a [Map] of [String],[TextStyle]
  /// where [String] is the html tag, and [TextStyle] is the style applied
  /// ```dart
  /// HTML.toTextSpan(
  ///   context,
  ///   htmlContent,
  ///   overrideStyle: {
  ///     "p": TextStyle(color: Colors.red),
  ///     "a": TextStyle(decoration: TextDecoration.underline),
  ///     //...
  ///     //...
  ///   },
  /// );
  /// ```

  static TextSpan toTextSpan(BuildContext context, String htmlContent,
      {Function linksCallback, Map<String, TextStyle> overrideStyle}) {
    //to fix a known issue with &nbsp; when appears after a ending tag
    htmlContent =
        htmlContent.replaceAll("&nbsp;", " ").replaceAll("&nbsp", " ");

    Parser p = Parser(context, HtmlUnescape().convert(htmlContent),
        linksCallback: linksCallback,
        overrideStyleMap: overrideStyle ?? Map<String, TextStyle>());
    return TextSpan(text: "", children: p.parse());
  }

  /// Returns a [RichText] widget you can directly add to your widget tree.
  /// In addition to the build context and your HTML content, you can
  /// pass a function to this method. You can use the function to handle
  /// click events on anchor tags. The function will receive the actual link
  /// as its argument.
  ///
  /// To overrides and/or apply custom styles to all html tags
  /// pass in [overrideStyle] which is a [Map] of [String],[TextStyle]
  /// where [String] is the html tag, and [TextStyle] is the style applied
  /// ```dart
  /// HTML.toRichText(
  ///   context,
  ///   htmlContent,
  ///   overrideStyle: {
  ///     "p": TextStyle(color: Colors.red),
  ///     "a": TextStyle(decoration: TextDecoration.underline),
  ///     //...
  ///     //...
  ///   },
  /// );
  /// ```

  static RichText toRichText(BuildContext context, String htmlContent,
      {Function linksCallback, Map<String, TextStyle> overrideStyle}) {
    return RichText(
        text: toTextSpan(context, htmlContent,
            linksCallback: linksCallback, overrideStyle: overrideStyle));
  }
}
