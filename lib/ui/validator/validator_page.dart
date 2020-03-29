import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:html_content_previewer/ui/validator/content_page.dart';
import 'package:html_content_previewer/ui/validator/previewer_page.dart';

class ValidatorPage extends StatefulWidget {
  String htmlContent;

  @override
  _ValidatorPageState createState() => _ValidatorPageState();
}

class _ValidatorPageState extends State<ValidatorPage> {
  @override
  void initState() {
    widget.htmlContent = "";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    void onEdit(String str) {
      widget.htmlContent = str;
      setState(() {});
    }

    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
              child: ContentPage(
            content: widget.htmlContent,
            callback: onEdit,
          )),
          Container(
            color: Colors.black,
            width: 5,
          ),
          Expanded(child: PreviewPage(preview: widget.htmlContent)),
        ],
      ),
    );
  }
}
