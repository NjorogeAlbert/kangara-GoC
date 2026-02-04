import 'package:flutter/material.dart';

class Mitch extends StatelessWidget {
  const Mitch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: Colors.tealAccent,
      ),
      body: Center(child: Text('Profile Page')),
    );
  }
}

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

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
          actions: [
            IconButton(
              icon: Icon(Icons.settings, color: Colors.black, size: 30),
              onPressed: () {
                // Action for settings button
              },
            ),
            SizedBox(width: 10),
            IconButton(
              icon: Icon(Icons.search, color: Colors.black, size: 30),
              onPressed: () {
                Navigator.pushNamed(context, '/mitch');
                // Action for search button
              },
            ),
            SizedBox(width: 10),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.black),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle, color: Colors.black),
              label: 'Profile',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings, color: Colors.black),
              label: 'Settings',
            ),
          ],
          selectedItemColor: Colors.deepPurple,
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(color: Colors.tealAccent),
                child: Text(
                  'Profile',
                  style: TextStyle(color: Colors.deepPurple, fontSize: 24),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home, color: Colors.deepPurple),
                title: Text('Home'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Homescreen()),
                  );

                  // Action for Home
                },
              ),
              ListTile(
                leading: Icon(Icons.account_circle, color: Colors.deepPurple),
                title: Text('Profile'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Mitch()),
                  );
                  // Action for Profile
                },
              ),
              ListTile(
                leading: Icon(Icons.settings, color: Colors.deepPurple),
                title: Text('Settings'),
                onTap: () {
                  // Action for Settings
                },
              ),
            ],
          ),
        ),
        // ignore: avoid_unnecessary_containers
        body: Column(
          children: [
            Container(
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
          ],
        ),
      ),
    );
  }
}
