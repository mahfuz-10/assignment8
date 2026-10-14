import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ContactListScreen(),
    );
  }
}

class ContactListScreen extends StatelessWidget {
  const ContactListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text('Contact List'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextFormField(
              initialValue: 'Hasan',
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 12),
            TextFormField(
              initialValue: '01745-777777',
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 12),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                onPressed: () {},
                child: const Text('Add', style: TextStyle(color: Colors.white)),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: const [
                  Card(
                    child: ListTile(
                      leading: Icon(Icons.person),
                      title: Text('king', style: TextStyle(color: Colors.red)),
                      subtitle: Text('01877-777777'),
                      trailing: Icon(Icons.phone, color: Colors.blue),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: Icon(Icons.person),
                      title: Text('salman', style: TextStyle(color: Colors.red)),
                      subtitle: Text('01673-777777'),
                      trailing: Icon(Icons.phone, color: Colors.blue),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: Icon(Icons.person),
                      title: Text('Hasan', style: TextStyle(color: Colors.red)),
                      subtitle: Text('01745-777777'),
                      trailing: Icon(Icons.phone, color: Colors.blue),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: Icon(Icons.person),
                      title: Text('gourab', style: TextStyle(color: Colors.red)),
                      subtitle: Text('01745-777777'),
                      trailing: Icon(Icons.phone, color: Colors.blue),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: Icon(Icons.person),
                      title: Text('mahfuz', style: TextStyle(color: Colors.red)),
                      subtitle: Text('01745-777777'),
                      trailing: Icon(Icons.phone, color: Colors.blue),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}