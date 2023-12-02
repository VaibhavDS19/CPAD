import 'package:cpad/pages/home.dart';
import 'package:cpad/pages/select_service.dart';
import 'package:cpad/pages/start.dart';
import 'package:flutter/material.dart';

void main () {
  runApp(const MaterialApp(
    home: Flexible(child: StartPage()),
    debugShowCheckedModeBanner: false,
  ));
}
