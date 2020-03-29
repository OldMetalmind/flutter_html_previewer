import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:html/parser.dart' show parse;

class PreviewPage extends StatelessWidget {
  final String preview;

  String clearText(String content) {
    if (content == null) return "";

    content = content.replaceAll("\\n", "");
    content = content.replaceAll("\\t", "");
    content = content.replaceAll("\\r", "");

    return content;
  }

  const PreviewPage({Key key, @required this.preview}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      color: Colors.yellowAccent,
      child: Container(
        color: Colors.white,
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Html(
            useRichText: true,
            data: parse(clearText(preview)).body.innerHtml.toString(),
          ),
        ),
      ),
    );
  }
}
