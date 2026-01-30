import 'package:flutter/material.dart';

void main() {
  runApp(MyApp(home: Homepage()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required Homepage home});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Kangara GoC '),
          backgroundColor: Colors.tealAccent,
          leading: Icon(Icons.menu),
          actions: [
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {
                // Action for settings button
              },
            ),
            SizedBox(width: 10),
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                // Action for search button
              },
            ),
            SizedBox(width: 10),
          ],
        ),
        body: Center(
          child: Text(
            'Hello',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
        ),
      ),
    );
  }
}

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Homepage')),
      body: Center(child: Text('Welcome to the Homepage!')),
    );
  }
}
