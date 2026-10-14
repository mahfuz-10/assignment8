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
      home: UserProfileScreen(),
    );
  }
}

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Profile'),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Profile Card Section
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      const CircleAvatar(
                        radius: 50,
                        backgroundImage: NetworkImage(
                          'https://bpu.ac.lk/academic-directory/uploads/Unknown_person.jpg',
                        ),
                      ),
                      const SizedBox(height: 12),
                      const Text(
                        'Mahfuzur rahman',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 4),
                      const Text(
                        'Flutter Developer',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(height: 12),
                      const Text(
                        'Passionate about creating user-friendly and engaging digital experiences.',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 14, color: Colors.black87),
                      ),
                      const SizedBox(height: 16),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.email, size: 18, color: Colors.grey),
                          SizedBox(width: 8),
                          Text('ayaanmahfuz121@gmail.com'),
                        ],
                      ),
                      const SizedBox(height: 8),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.phone, size: 18, color: Colors.grey),
                          SizedBox(width: 8),
                          Text('01707077384'),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blue,
                              ),
                              onPressed: () {},
                              child: const Text('Follow', style: TextStyle(color: Colors.white)),
                            ),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: OutlinedButton(
                              onPressed: () {},
                              child: const Text('Message'),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 24),
              // Interests Section Title
              const Text(
                'Interests',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              // Two Cards Section (Travel & Photography)
              Row(
                children: [
                  Expanded(
                    child: Card(
                      elevation: 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.network(
                            'https://images.unsplash.com/photo-1507525428034-b723cf961d3e?w=500',
                            height: 100,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Travel',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(height: 4),
                                const Text(
                                  'Exploring new places around the world.',
                                  style: TextStyle(fontSize: 12, color: Colors.grey),
                                ),
                                const SizedBox(height: 8),
                                Center(
                                  child: TextButton(
                                    onPressed: () {},
                                    child: const Text('View More'),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Card(
                      elevation: 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.network(
                            'https://images.unsplash.com/photo-1516035069371-29a1b244cc32?w=500',
                            height: 100,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Photography',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(height: 4),
                                const Text(
                                  'Capturing moments through the lens.',
                                  style: TextStyle(fontSize: 12, color: Colors.grey),
                                ),
                                const SizedBox(height: 8),
                                Center(
                                  child: TextButton(
                                    onPressed: () {},
                                    child: const Text('View More'),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}