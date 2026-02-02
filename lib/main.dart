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
          title: Text(
            'Kangara GoC ',
            style: TextStyle(
              color: Colors.deepPurple,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.tealAccent,
          elevation: 0,
          leading: Icon(Icons.menu, color: Colors.deepPurple, size: 30),
          actions: [
            IconButton(
              icon: Icon(Icons.settings, color: Colors.deepPurple, size: 30),
              onPressed: () {
                // Action for settings button
              },
            ),
            SizedBox(width: 10),
            IconButton(
              icon: Icon(Icons.search, color: Colors.deepPurple, size: 30),
              onPressed: () {
                // Action for search button
              },
            ),
            SizedBox(width: 10),
          ],
        ),
        // ignore: avoid_unnecessary_containers
        body: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: const Color.fromARGB(255, 176, 173, 173),
              width: 0,
            ),
            borderRadius: BorderRadius.circular(8),
            color: Colors.yellowAccent,
          ),
          margin: const EdgeInsets.only(top: 10),
          alignment: Alignment.center, // centers the child
          padding: const EdgeInsets.all(10), // spacing inside container
          height: 60,
          width: double.infinity,
          // optional spacing inside container
          child: Text(
            'Hello World!',
            style: TextStyle(
              fontSize: 14,
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Container(height: 30, width: 30, color: Colors.yellow)],
      ),
    );
  }
}
