import 'dart:math';

import 'package:flutter/material.dart';
import 'pages/list_page.dart';
import 'pages/start_page.dart';

void main() => runApp(MaterialApp(
      theme: ThemeData(),
      initialRoute: '/',
      routes: {
        '/': ((context) => StartPage()),
        '/list_page': (context) => ListPage()
      },
    ));
