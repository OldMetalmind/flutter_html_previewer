import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ContentPage extends StatelessWidget {
  final String content;
  final callback;

  const ContentPage({Key key, @required this.content, @required this.callback})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      color: Colors.blueAccent,
      child: Container(
        padding: EdgeInsets.all(10),
        color: Colors.white,
        child: TextField(
          expands: true,
          minLines: null,
          maxLines: null,
          onChanged: (String str) {
            callback(str);
          },
          cursorColor: Colors.red,
          decoration: InputDecoration(
              border: OutlineInputBorder(), hintText: 'Insira o seu HTML'),
        ),
      ),
    );
  }
}
