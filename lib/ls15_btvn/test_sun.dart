import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const SunApp());
}

class SunApp extends StatelessWidget {
  const SunApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.transparent, // Nền trong suốt
        body: Center(
          child: CustomPaint(
            size: const Size(300, 300),
            painter: SunPainter(),
          ),
        ),
      ),
    );
  }
}

class SunPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);

    // Tạo gradient cho mặt trời
    final sunGradient = Paint()
      ..shader = const LinearGradient(
        colors: [Colors.yellow, Colors.orange], // Mức độ chuyển tiếp màu
      ).createShader(Rect.fromCircle(center: center, radius: 50));

    // Vẽ mặt trời với gradient
    canvas.drawCircle(center, 50, sunGradient);

    // Vẽ tia nắng với gradient
    final rayGradient = Paint()
      ..shader = LinearGradient(
        colors: [
          Colors.yellow.withOpacity(0.8),
          Colors.orange.withOpacity(0.5)
        ],
      ).createShader(Rect.fromCircle(center: center, radius: 100))
      ..strokeWidth = 5;

    for (int i = 0; i < 360; i += 30) {
      final angle = i * pi / 180;
      final rayStart = Offset(
        size.width / 2 + 60 * cos(angle),
        size.height / 2 + 60 * sin(angle),
      );
      final rayEnd = Offset(
        size.width / 2 + 100 * cos(angle),
        size.height / 2 + 100 * sin(angle),
      );
      canvas.drawLine(rayStart, rayEnd, rayGradient);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
