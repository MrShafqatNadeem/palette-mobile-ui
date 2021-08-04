import 'dart:io';

import 'package:flutter/material.dart';

class ShowImageScreen extends StatefulWidget {
  File image;

  ShowImageScreen({this.image});

  @override
  _ShowImageScreenState createState() => _ShowImageScreenState();
}

class _ShowImageScreenState extends State<ShowImageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Center(child: Image.file(widget.image))),
    );
  }
}
