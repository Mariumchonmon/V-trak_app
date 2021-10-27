// @dart=2.9

import 'package:flutter/material.dart';
import 'package:vtrak_app/screens/Splash.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash(key: null,),
    );
  }
}

