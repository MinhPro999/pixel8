import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const ScreenLisstviewWeatherApp());
}

class ScreenLisstviewWeatherApp extends StatelessWidget {
  const ScreenLisstviewWeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ListviewScreen(),
    );
  }
}

class ListviewScreen extends StatelessWidget {
  const ListviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color(0xff1B2332).withOpacity(0.35),
          title: const Text(
            'List weather City',
            style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.normal),
          ),
          centerTitle: true,
          leading: IconButton(
              onPressed: () {}, icon: const Icon(Icons.arrow_back_ios))
              actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.menu))]),
    );
  }
}
