import 'package:flutter/material.dart';
import 'package:flutter_insta/home.dart';
import 'package:flutter_insta/responsive/mobile.dart';
import 'package:flutter_insta/responsive/responsive.dart';
import 'package:flutter_insta/responsive/web.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      home: Responsive(
        myMobileScreen: Mobile(),
        myWebScreen: Web(),
      ),
    );
  }
}
