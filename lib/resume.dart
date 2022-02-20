import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class ParaNumber extends StatefulWidget {
  final pageNum;

  const ParaNumber({Key key, this.pageNum}) : super(key: key);

  @override
  _ParaNumberState createState() => _ParaNumberState();
}

class _ParaNumberState extends State<ParaNumber> {
  
  
  
  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Text('${widget.pageNum}'),  
        ),
      );
  }
}