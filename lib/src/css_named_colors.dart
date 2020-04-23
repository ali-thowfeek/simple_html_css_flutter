// Copyright 2020 Ali Ahamed Thowfeek
// Copyright 2017 Google, Inc. All rights reserved.
//
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided that the following conditions are
// met:
//
//    * Redistributions of source code must retain the above copyright
// notice, this list of conditions and the following disclaimer.
//    * Redistributions in binary form must reproduce the above
// copyright notice, this list of conditions and the following disclaimer
// in the documentation and/or other materials provided with the
// distribution.
//    * Neither the name of Google Inc. nor the names of its
// contributors may be used to endorse or promote products derived from
// this software without specific prior written permission.
//
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
// "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
// LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
// A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
// OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
// SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
// LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
// DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
// THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
// (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
// OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

import 'dart:ui' show Color;

class CssNamedColors {
  /// Returns the corresponding [Color] for the passed in CSS color [name]
  Color getColor(String name) {
    switch (name.toLowerCase()) {
      case "aliceblue":
        return Color(0xFFF0F8FF);

        break;
      case "antiquewhite":
        return Color(0xFFFAEBD7);

        break;
      case "aqua":
        return Color(0xFF00FFFF);

        break;
      case "aquamarine":
        return Color(0xFF7FFFD4);

        break;
      case "azure":
        return Color(0xFFF0FFFF);

        break;
      case "beige":
        return Color(0xFFF5F5DC);

        break;
      case "bisque":
        return Color(0xFFFFE4C4);

        break;
      case "black":
        return Color(0xFF000000);

        break;
      case "blanchedalmond":
        return Color(0xFFFFEBCD);

        break;
      case "blue":
        return Color(0xFF0000FF);

        break;
      case "blueviolet":
        return Color(0xFF8A2BE2);

        break;
      case "brown":
        return Color(0xFFA52A2A);

        break;
      case "burlywood":
        return Color(0xFFDEB887);

        break;
      case "cadetblue":
        return Color(0xFF5F9EA0);

        break;
      case "chartreuse":
        return Color(0xFF7FFF00);

        break;
      case "chocolate":
        return Color(0xFFD2691E);

        break;
      case "coral":
        return Color(0xFFFF7F50);

        break;
      case "cornflowerblue":
        return Color(0xFF6495ED);

        break;
      case "cornsilk":
        return Color(0xFFFFF8DC);

        break;
      case "crimson":
        return Color(0xFFDC143C);

        break;
      case "cyan":
        return Color(0xFF00FFFF);

        break;
      case "darkblue":
        return Color(0xFF00008B);

        break;
      case "darkcyan":
        return Color(0xFF008B8B);

        break;
      case "darkgoldenrod":
        return Color(0xFFB8860B);

        break;
      case "darkgray":
        return Color(0xFFA9A9A9);

        break;
      case "darkgreen":
        return Color(0xFF006400);

        break;
      case "darkgrey":
        return Color(0xFFA9A9A9);

        break;
      case "darkkhaki":
        return Color(0xFFBDB76B);

        break;
      case "darkmagenta":
        return Color(0xFF8B008B);

        break;
      case "darkolivegreen":
        return Color(0xFF556B2F);

        break;
      case "darkorange":
        return Color(0xFFFF8C00);

        break;
      case "darkorchid":
        return Color(0xFF9932CC);

        break;
      case "darkred":
        return Color(0xFF8B0000);

        break;
      case "darksalmon":
        return Color(0xFFE9967A);

        break;
      case "darkseagreen":
        return Color(0xFF8FBC8F);

        break;
      case "darkslateblue":
        return Color(0xFF483D8B);

        break;
      case "darkslategray":
        return Color(0xFF2F4F4F);

        break;
      case "darkslategrey":
        return Color(0xFF2F4F4F);

        break;
      case "darkturquoise":
        return Color(0xFF00CED1);

        break;
      case "darkviolet":
        return Color(0xFF9400D3);

        break;
      case "deeppink":
        return Color(0xFFFF1493);

        break;
      case "deepskyblue":
        return Color(0xFF00BFFF);

        break;
      case "dimgray":
        return Color(0xFF696969);

        break;
      case "dimgrey":
        return Color(0xFF696969);

        break;
      case "dodgerblue":
        return Color(0xFF1E90FF);

        break;
      case "firebrick":
        return Color(0xFFB22222);

        break;
      case "floralwhite":
        return Color(0xFFFFFAF0);

        break;
      case "forestgreen":
        return Color(0xFF228B22);

        break;
      case "fuchsia":
        return Color(0xFFFF00FF);

        break;
      case "gainsboro":
        return Color(0xFFDCDCDC);

        break;
      case "ghostwhite":
        return Color(0xFFF8F8FF);

        break;
      case "gold":
        return Color(0xFFFFD700);

        break;
      case "goldenrod":
        return Color(0xFFDAA520);

        break;
      case "gray":
        return Color(0xFF808080);

        break;
      case "green":
        return Color(0xFF008000);

        break;
      case "greenyellow":
        return Color(0xFFADFF2F);

        break;
      case "grey":
        return Color(0xFF808080);

        break;
      case "honeydew":
        return Color(0xFFF0FFF0);

        break;
      case "hotpink":
        return Color(0xFFFF69B4);

        break;
      case "indianred":
        return Color(0xFFCD5C5C);

        break;
      case "indigo":
        return Color(0xFF4B0082);

        break;
      case "ivory":
        return Color(0xFFFFFFF0);

        break;
      case "khaki":
        return Color(0xFFF0E68C);

        break;
      case "lavender":
        return Color(0xFFE6E6FA);

        break;
      case "lavenderblush":
        return Color(0xFFFFF0F5);

        break;
      case "lawngreen":
        return Color(0xFF7CFC00);

        break;
      case "lemonchiffon":
        return Color(0xFFFFFACD);

        break;
      case "lightblue":
        return Color(0xFFADD8E6);

        break;
      case "lightcoral":
        return Color(0xFFF08080);

        break;
      case "lightcyan":
        return Color(0xFFE0FFFF);

        break;
      case "lightgoldenrodyellow":
        return Color(0xFFFAFAD2);

        break;
      case "lightgray":
        return Color(0xFFD3D3D3);

        break;
      case "lightgreen":
        return Color(0xFF90EE90);

        break;
      case "lightgrey":
        return Color(0xFFD3D3D3);

        break;
      case "lightpink":
        return Color(0xFFFFB6C1);

        break;
      case "lightsalmon":
        return Color(0xFFFFA07A);

        break;
      case "lightseagreen":
        return Color(0xFF20B2AA);

        break;
      case "lightskyblue":
        return Color(0xFF87CEFA);

        break;
      case "lightslategray":
        return Color(0xFF778899);

        break;
      case "lightslategrey":
        return Color(0xFF778899);

        break;
      case "lightsteelblue":
        return Color(0xFFB0C4DE);

        break;
      case "lightyellow":
        return Color(0xFFFFFFE0);

        break;
      case "lime":
        return Color(0xFF00FF00);

        break;
      case "limegreen":
        return Color(0xFF32CD32);

        break;
      case "linen":
        return Color(0xFFFAF0E6);

        break;
      case "magenta":
        return Color(0xFFFF00FF);

        break;
      case "maroon":
        return Color(0xFF800000);

        break;
      case "mediumaquamarine":
        return Color(0xFF66CDAA);

        break;
      case "mediumblue":
        return Color(0xFF0000CD);

        break;
      case "mediumorchid":
        return Color(0xFFBA55D3);

        break;
      case "mediumpurple":
        return Color(0xFF9370DB);

        break;
      case "mediumseagreen":
        return Color(0xFF3CB371);

        break;
      case "mediumslateblue":
        return Color(0xFF7B68EE);

        break;
      case "mediumspringgreen":
        return Color(0xFF00FA9A);

        break;
      case "mediumturquoise":
        return Color(0xFF48D1CC);

        break;
      case "mediumvioletred":
        return Color(0xFFC71585);

        break;
      case "midnightblue":
        return Color(0xFF191970);

        break;
      case "mintcream":
        return Color(0xFFF5FFFA);

        break;
      case "mistyrose":
        return Color(0xFFFFE4E1);

        break;
      case "moccasin":
        return Color(0xFFFFE4B5);

        break;
      case "navajowhite":
        return Color(0xFFFFDEAD);

        break;
      case "navy":
        return Color(0xFF000080);

        break;
      case "oldlace":
        return Color(0xFFFDF5E6);

        break;
      case "olive":
        return Color(0xFF808000);

        break;
      case "olivedrab":
        return Color(0xFF6B8E23);

        break;
      case "orange":
        return Color(0xFFFFA500);

        break;
      case "orangered":
        return Color(0xFFFF4500);

        break;
      case "orchid":
        return Color(0xFFDA70D6);

        break;
      case "palegoldenrod":
        return Color(0xFFEEE8AA);

        break;
      case "palegreen":
        return Color(0xFF98FB98);

        break;
      case "paleturquoise":
        return Color(0xFFAFEEEE);

        break;
      case "palevioletred":
        return Color(0xFFDB7093);

        break;
      case "papayawhip":
        return Color(0xFFFFEFD5);

        break;
      case "peachpuff":
        return Color(0xFFFFDAB9);

        break;
      case "peru":
        return Color(0xFFCD853F);

        break;
      case "pink":
        return Color(0xFFFFC0CB);

        break;
      case "plum":
        return Color(0xFFDDA0DD);

        break;
      case "powderblue":
        return Color(0xFFB0E0E6);

        break;
      case "purple":
        return Color(0xFF800080);

        break;
      case "rebeccapurple":
        return Color(0xFF663399);

        break;
      case "red":
        return Color(0xFFFF0000);

        break;
      case "rosybrown":
        return Color(0xFFBC8F8F);

        break;
      case "royalblue":
        return Color(0xFF4169E1);

        break;
      case "saddlebrown":
        return Color(0xFF8B4513);

        break;
      case "salmon":
        return Color(0xFFFA8072);

        break;
      case "sandybrown":
        return Color(0xFFF4A460);

        break;
      case "seagreen":
        return Color(0xFF2E8B57);

        break;
      case "seashell":
        return Color(0xFFFFF5EE);

        break;
      case "sienna":
        return Color(0xFFA0522D);

        break;
      case "silver":
        return Color(0xFFC0C0C0);

        break;
      case "skyblue":
        return Color(0xFF87CEEB);

        break;
      case "slateblue":
        return Color(0xFF6A5ACD);

        break;
      case "slategray":
        return Color(0xFF708090);

        break;
      case "slategrey":
        return Color(0xFF708090);

        break;
      case "snow":
        return Color(0xFFFFFAFA);

        break;
      case "springgreen":
        return Color(0xFF00FF7F);

        break;
      case "steelblue":
        return Color(0xFF4682B4);

        break;
      case "tan":
        return Color(0xFFD2B48C);

        break;
      case "teal":
        return Color(0xFF008080);

        break;
      case "thistle":
        return Color(0xFFD8BFD8);

        break;
      case "tomato":
        return Color(0xFFFF6347);

        break;
      case "turquoise":
        return Color(0xFF40E0D0);

        break;
      case "violet":
        return Color(0xFFEE82EE);

        break;
      case "wheat":
        return Color(0xFFF5DEB3);

        break;
      case "white":
        return Color(0xFFFFFFFF);

        break;
      case "whitesmoke":
        return Color(0xFFF5F5F5);

        break;
      case "yellow":
        return Color(0xFFFFFF00);

        break;
      case "yellowgreen":
        return Color(0xFF9ACD32);

        break;
      default:
        return Color(0xFF9E9E9E);
    }
  }
}
