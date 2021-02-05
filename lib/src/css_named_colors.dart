// Modified work: Copyright 2020 Ali Ahamed Thowfeek
// Original work: Copyright 2017 Google, Inc. All rights reserved.
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
      case 'aliceblue':
        return const Color(0xFFF0F8FF);

      case 'antiquewhite':
        return const Color(0xFFFAEBD7);

      case 'aqua':
        return const Color(0xFF00FFFF);

      case 'aquamarine':
        return const Color(0xFF7FFFD4);

      case 'azure':
        return const Color(0xFFF0FFFF);

      case 'beige':
        return const Color(0xFFF5F5DC);

      case 'bisque':
        return const Color(0xFFFFE4C4);

      case 'black':
        return const Color(0xFF000000);

      case 'blanchedalmond':
        return const Color(0xFFFFEBCD);

      case 'blue':
        return const Color(0xFF0000FF);

      case 'blueviolet':
        return const Color(0xFF8A2BE2);

      case 'brown':
        return const Color(0xFFA52A2A);

      case 'burlywood':
        return const Color(0xFFDEB887);

      case 'cadetblue':
        return const Color(0xFF5F9EA0);

      case 'chartreuse':
        return const Color(0xFF7FFF00);

      case 'chocolate':
        return const Color(0xFFD2691E);

      case 'coral':
        return const Color(0xFFFF7F50);

      case 'cornflowerblue':
        return const Color(0xFF6495ED);

      case 'cornsilk':
        return const Color(0xFFFFF8DC);

      case 'crimson':
        return const Color(0xFFDC143C);

      case 'cyan':
        return const Color(0xFF00FFFF);

      case 'darkblue':
        return const Color(0xFF00008B);

      case 'darkcyan':
        return const Color(0xFF008B8B);

      case 'darkgoldenrod':
        return const Color(0xFFB8860B);

      case 'darkgray':
        return const Color(0xFFA9A9A9);

      case 'darkgreen':
        return const Color(0xFF006400);

      case 'darkgrey':
        return const Color(0xFFA9A9A9);

      case 'darkkhaki':
        return const Color(0xFFBDB76B);

      case 'darkmagenta':
        return const Color(0xFF8B008B);

      case 'darkolivegreen':
        return const Color(0xFF556B2F);

      case 'darkorange':
        return const Color(0xFFFF8C00);

      case 'darkorchid':
        return const Color(0xFF9932CC);

      case 'darkred':
        return const Color(0xFF8B0000);

      case 'darksalmon':
        return const Color(0xFFE9967A);

      case 'darkseagreen':
        return const Color(0xFF8FBC8F);

      case 'darkslateblue':
        return const Color(0xFF483D8B);

      case 'darkslategray':
        return const Color(0xFF2F4F4F);

      case 'darkslategrey':
        return const Color(0xFF2F4F4F);

      case 'darkturquoise':
        return const Color(0xFF00CED1);

      case 'darkviolet':
        return const Color(0xFF9400D3);

      case 'deeppink':
        return const Color(0xFFFF1493);

      case 'deepskyblue':
        return const Color(0xFF00BFFF);

      case 'dimgray':
        return const Color(0xFF696969);

      case 'dimgrey':
        return const Color(0xFF696969);

      case 'dodgerblue':
        return const Color(0xFF1E90FF);

      case 'firebrick':
        return const Color(0xFFB22222);

      case 'floralwhite':
        return const Color(0xFFFFFAF0);

      case 'forestgreen':
        return const Color(0xFF228B22);

      case 'fuchsia':
        return const Color(0xFFFF00FF);

      case 'gainsboro':
        return const Color(0xFFDCDCDC);

      case 'ghostwhite':
        return const Color(0xFFF8F8FF);

      case 'gold':
        return const Color(0xFFFFD700);

      case 'goldenrod':
        return const Color(0xFFDAA520);

      case 'gray':
        return const Color(0xFF808080);

      case 'green':
        return const Color(0xFF008000);

      case 'greenyellow':
        return const Color(0xFFADFF2F);

      case 'grey':
        return const Color(0xFF808080);

      case 'honeydew':
        return const Color(0xFFF0FFF0);

      case 'hotpink':
        return const Color(0xFFFF69B4);

      case 'indianred':
        return const Color(0xFFCD5C5C);

      case 'indigo':
        return const Color(0xFF4B0082);

      case 'ivory':
        return const Color(0xFFFFFFF0);

      case 'khaki':
        return const Color(0xFFF0E68C);

      case 'lavender':
        return const Color(0xFFE6E6FA);

      case 'lavenderblush':
        return const Color(0xFFFFF0F5);

      case 'lawngreen':
        return const Color(0xFF7CFC00);

      case 'lemonchiffon':
        return const Color(0xFFFFFACD);

      case 'lightblue':
        return const Color(0xFFADD8E6);

      case 'lightcoral':
        return const Color(0xFFF08080);

      case 'lightcyan':
        return const Color(0xFFE0FFFF);

      case 'lightgoldenrodyellow':
        return const Color(0xFFFAFAD2);

      case 'lightgray':
        return const Color(0xFFD3D3D3);

      case 'lightgreen':
        return const Color(0xFF90EE90);

      case 'lightgrey':
        return const Color(0xFFD3D3D3);

      case 'lightpink':
        return const Color(0xFFFFB6C1);

      case 'lightsalmon':
        return const Color(0xFFFFA07A);

      case 'lightseagreen':
        return const Color(0xFF20B2AA);

      case 'lightskyblue':
        return const Color(0xFF87CEFA);

      case 'lightslategray':
        return const Color(0xFF778899);

      case 'lightslategrey':
        return const Color(0xFF778899);

      case 'lightsteelblue':
        return const Color(0xFFB0C4DE);

      case 'lightyellow':
        return const Color(0xFFFFFFE0);

      case 'lime':
        return const Color(0xFF00FF00);

      case 'limegreen':
        return const Color(0xFF32CD32);

      case 'linen':
        return const Color(0xFFFAF0E6);

      case 'magenta':
        return const Color(0xFFFF00FF);

      case 'maroon':
        return const Color(0xFF800000);

      case 'mediumaquamarine':
        return const Color(0xFF66CDAA);

      case 'mediumblue':
        return const Color(0xFF0000CD);

      case 'mediumorchid':
        return const Color(0xFFBA55D3);

      case 'mediumpurple':
        return const Color(0xFF9370DB);

      case 'mediumseagreen':
        return const Color(0xFF3CB371);

      case 'mediumslateblue':
        return const Color(0xFF7B68EE);

      case 'mediumspringgreen':
        return const Color(0xFF00FA9A);

      case 'mediumturquoise':
        return const Color(0xFF48D1CC);

      case 'mediumvioletred':
        return const Color(0xFFC71585);

      case 'midnightblue':
        return const Color(0xFF191970);

      case 'mintcream':
        return const Color(0xFFF5FFFA);

      case 'mistyrose':
        return const Color(0xFFFFE4E1);

      case 'moccasin':
        return const Color(0xFFFFE4B5);

      case 'navajowhite':
        return const Color(0xFFFFDEAD);

      case 'navy':
        return const Color(0xFF000080);

      case 'oldlace':
        return const Color(0xFFFDF5E6);

      case 'olive':
        return const Color(0xFF808000);

      case 'olivedrab':
        return const Color(0xFF6B8E23);

      case 'orange':
        return const Color(0xFFFFA500);

      case 'orangered':
        return const Color(0xFFFF4500);

      case 'orchid':
        return const Color(0xFFDA70D6);

      case 'palegoldenrod':
        return const Color(0xFFEEE8AA);

      case 'palegreen':
        return const Color(0xFF98FB98);

      case 'paleturquoise':
        return const Color(0xFFAFEEEE);

      case 'palevioletred':
        return const Color(0xFFDB7093);

      case 'papayawhip':
        return const Color(0xFFFFEFD5);

      case 'peachpuff':
        return const Color(0xFFFFDAB9);

      case 'peru':
        return const Color(0xFFCD853F);

      case 'pink':
        return const Color(0xFFFFC0CB);

      case 'plum':
        return const Color(0xFFDDA0DD);

      case 'powderblue':
        return const Color(0xFFB0E0E6);

      case 'purple':
        return const Color(0xFF800080);

      case 'rebeccapurple':
        return const Color(0xFF663399);

      case 'red':
        return const Color(0xFFFF0000);

      case 'rosybrown':
        return const Color(0xFFBC8F8F);

      case 'royalblue':
        return const Color(0xFF4169E1);

      case 'saddlebrown':
        return const Color(0xFF8B4513);

      case 'salmon':
        return const Color(0xFFFA8072);

      case 'sandybrown':
        return const Color(0xFFF4A460);

      case 'seagreen':
        return const Color(0xFF2E8B57);

      case 'seashell':
        return const Color(0xFFFFF5EE);

      case 'sienna':
        return const Color(0xFFA0522D);

      case 'silver':
        return const Color(0xFFC0C0C0);

      case 'skyblue':
        return const Color(0xFF87CEEB);

      case 'slateblue':
        return const Color(0xFF6A5ACD);

      case 'slategray':
        return const Color(0xFF708090);

      case 'slategrey':
        return const Color(0xFF708090);

      case 'snow':
        return const Color(0xFFFFFAFA);

      case 'springgreen':
        return const Color(0xFF00FF7F);

      case 'steelblue':
        return const Color(0xFF4682B4);

      case 'tan':
        return const Color(0xFFD2B48C);

      case 'teal':
        return const Color(0xFF008080);

      case 'thistle':
        return const Color(0xFFD8BFD8);

      case 'tomato':
        return const Color(0xFFFF6347);

      case 'turquoise':
        return const Color(0xFF40E0D0);

      case 'violet':
        return const Color(0xFFEE82EE);

      case 'wheat':
        return const Color(0xFFF5DEB3);

      case 'white':
        return const Color(0xFFFFFFFF);

      case 'whitesmoke':
        return const Color(0xFFF5F5F5);

      case 'yellow':
        return const Color(0xFFFFFF00);

      case 'yellowgreen':
        return const Color(0xFF9ACD32);

      default:
        return const Color(0xFF9E9E9E);
    }
  }
}
