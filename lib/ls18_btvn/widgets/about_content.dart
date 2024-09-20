import 'package:flutter/material.dart';

class AboutContent extends StatelessWidget {
  const AboutContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff1A2232),
      child: const Center(
          child: Text(
        "Incomming Feature",
        style: TextStyle(color: Colors.white),
      )),
    );
  }
}
