import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quranapp/main.dart';

import 'homepage.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage()
    );
  }
}
