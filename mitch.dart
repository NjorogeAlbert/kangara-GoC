import 'package:flutter/material.dart';

class Mitch extends StatelessWidget {
  const Mitch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Mitch'), backgroundColor: Colors.tealAccent),
      body: Center(child: Text('Profile Page')),
    );
  }
}
