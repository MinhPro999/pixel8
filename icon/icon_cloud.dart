import 'package:flutter/material.dart';

void main() {
  runApp(const CloudApp());
}

class CloudApp extends StatelessWidget {
  const CloudApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.transparent, // Nền trong suốt
        body: Center(
          child: CustomPaint(
            size: const Size(300, 300),
            painter: CloudPainter(),
          ),
        ),
      ),
    );
  }
}

class CloudPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Tạo gradient shader cho đám mây
    final bodyCloud = Paint()
      ..shader = const LinearGradient(
        colors: [Color(0xffECF238), Color.fromARGB(255, 68, 212, 217)],
      ).createShader(Rect.fromCircle(
          center: Offset(size.width / 2, size.height / 2), radius: 100));

    // Vẽ đám mây
    final cloudCenter = Offset(size.width / 2 - 15, size.height / 2 - 20);

    // Vẽ các phần hình tròn của đám mây
    canvas.drawCircle(cloudCenter, 54, bodyCloud); // Đám mây ở giữa

    // Tạo shader cho phần dưới của đám mây
    final botCloud = Paint()
      ..shader = const LinearGradient(
        colors: [Color(0xffECF238), Color(0xffD4D952)],
      ).createShader(
          Rect.fromLTWH(size.width / 2 - 80, size.height / 2 - 10, 160, 50));

    // Vẽ phần dưới của đám mây (hình chữ nhật bo góc)
    final rect =
        Rect.fromLTWH(size.width / 2 - 90, size.height / 2.5 - 10, 170, 80);
    final rrect = RRect.fromRectAndRadius(rect, const Radius.circular(60));
    canvas.drawRRect(rrect, botCloud);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
