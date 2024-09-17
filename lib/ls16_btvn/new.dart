import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff1B2332).withOpacity(0.3),
        title: const Text(
          'Profile Data',
          style: TextStyle(),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
    );
  }
}
