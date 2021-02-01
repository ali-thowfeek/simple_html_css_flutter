import 'package:simple_html_css/simple_html_css.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String htmlContent = """
<body>

<h1 style='color: white; font-size:50px; font-style:italic; background-color: rgb(0,122,255); font-weight:100;)'> Hello word! </h1>
<h1 style=''>Convert your <span style='color:lightseagreen;'>HTML</span> and <span style='color:dodgerblue'>CSS</span> easily into RichText</h1>
<p>Lorem ipsum dolor sit, consectetur adipiscing elit. Pellentesque in leo id dui bibendum fringilla in et arcu. In vehicula vel est sed mattis.</p>
<p><a href="https://google.com">Need more? click this link</a></p>
<p>We all spell <span style='color:crimson; text-decoration: underline wavy;'>recieve</span> wrong.<br />Some times we delete <del>stuff</del></p>
<div style='font-size:17px'>We write things that are <span style='font-size:1.5em;'>Big,</span> <b>bold</b>&nbsp; or <span style='color:brown'>colorful</span></div>
<p style='font-family:times;'>Some different FONT with <span style='background-color:lightcyan;'>this part highlighted</span></p>
<div style='line-height:2; font-size:17px'><b style='color: rgb(0,122,255); font-weight:500;'>Finally some line heights.</b> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque in leo id dui bibendum fringilla in et arcu. In vehicula vel est sed mattis. Duis varius, sem non mattis.</div>

</body>
""";

    // or use HTML.toRichText()
    var textSpan = HTML.toTextSpan(
      context,
      htmlContent,
      linksCallback: (link) {
        print("You clicked on $link");
      },
      // as name suggests, optionally set the default text style
      defaultTextStyle: TextStyle(color: Colors.grey[700]),
      overrideStyle: {
        "p": TextStyle(fontSize: 17.3),
        "a": TextStyle(wordSpacing: 2),
        // specify any tag not just the supported ones,
        // and apply TextStyles to them and/override them
      },
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("Demo")),
        body: Container(
          color: Colors.white,
          padding: EdgeInsets.all(16.0),
          child: RichText(text: textSpan),
        ),
      ),
    );
  }
}
