import 'package:flutter/material.dart';
import 'package:flutter_application_mitch_koko/main.dart';

void main() {
  runApp(MyApp(home: Homepage()));
}
class MyApp extends StatefulWidget {
  const MyApp({super.key, required Homepage home});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
