import 'package:flutter/material.dart';

import 'ui/validator/validator_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HTML Flutter Preview',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ValidatorPage(),
    );
  }
}
