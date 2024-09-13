import 'package:flutter/material.dart';

void main() {
  runApp(const MyAppScreen());
}

class MyAppScreen extends StatelessWidget {
  const MyAppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'MyFont'),
      home: const ScreenWidget(),
    );
  }
}

class ScreenWidget extends StatelessWidget {
  const ScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 68, 67, 95),
              Color.fromARGB(255, 19, 18, 31)
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: Stack(
            children: [
              const Positioned.fill(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    LogoTopScreen(),
                    SizedBox(
                      height: 40,
                    ),
                    TextEmail(),
                    SizedBox(
                      height: 40,
                    ),
                    PassWord(),
                    SizedBox(
                      height: 40,
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.language,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PassWord extends StatefulWidget {
  const PassWord({super.key});

  @override
  _PassWordState createState() => _PassWordState();
}

class _PassWordState extends State<PassWord> {
  bool _isObscure = true; // Biến boolean để điều khiển hiển thị mật khẩu

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 400,
      child: TextField(
        obscureText: _isObscure,
        decoration: InputDecoration(
          icon: Icon(Icons.person),
          labelText: 'Password',
          hintText: 'Enter your password',
          hintStyle: const TextStyle(color: Colors.grey),
          suffixIcon: IconButton(
            onPressed: () {
              // Thay đổi trạng thái hiển thị mật khẩu
              setState(() {
                _isObscure = !_isObscure;
              });
            },
            icon: Icon(
              _isObscure ? Icons.visibility : Icons.visibility_off,
            ),
          ),
        ),
      ),
    );
  }
}

class TextEmail extends StatelessWidget {
  const TextEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(
        isDense: false,
        isCollapsed: true,
        border: OutlineInputBorder(),
        icon: Icon(Icons.person), // Sử dụng const để tối ưu
        // suffixIcon: Icon(Icons.person),
        labelText: 'Email',
        hintText: 'Enter your email',
        hintStyle: TextStyle(color: Colors.grey),
      ),
    );
  }
}

class LogoTopScreen extends StatelessWidget {
  const LogoTopScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 32),
        const Text(
          'Weather App',
          style: TextStyle(
            color: Colors.white,
            fontSize: 56,
            fontWeight: FontWeight.w800,
          ),
        ),
        SizedBox(
          height: 200,
          width: 100,
          child: CustomPaint(
            size: const Size(300, 300), // Tăng kích thước đám mây
            painter: CloudPainter(), // Loại bỏ từ khóa `const`
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        const Text(
          'login app and continue',
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.w100,
          ),
        ),
      ],
    );
  }
}

class CloudPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    const scaleFactor = 1.3; // Tăng kích thước thêm 30%

    // Tạo shader cho phần dưới của đám mây
    final botCloud = Paint()
      ..shader = const LinearGradient(
        colors: [
          Color.fromARGB(255, 239, 245, 86),
          Color.fromARGB(255, 150, 247, 159)
        ],
      ).createShader(
        Rect.fromLTWH(
          (size.width / 2 - 80) * scaleFactor,
          (size.height / 2 - 10) * scaleFactor,
          160 * scaleFactor,
          50 * scaleFactor,
        ),
      );

    // Vẽ phần dưới của đám mây (hình chữ nhật bo góc)
    final rect = Rect.fromLTWH(
      (size.width / 2 - 90) * scaleFactor,
      (size.height / 2.5 - 10) * scaleFactor,
      170 * scaleFactor,
      80 * scaleFactor,
    );
    final rrect = RRect.fromRectAndRadius(
      rect,
      const Radius.circular(60) * scaleFactor,
    );
    canvas.drawRRect(rrect, botCloud);

    // Tạo gradient shader cho đám mây
    final bodyCloud = Paint()
      ..shader = const LinearGradient(
        colors: [
          Color.fromARGB(255, 239, 245, 86),
          Color.fromARGB(255, 150, 247, 159)
        ],
      ).createShader(
        Rect.fromCircle(
          center: Offset(
            (size.width / 2) * scaleFactor,
            (size.height / 2) * scaleFactor,
          ),
          radius: 100 * scaleFactor,
        ),
      );

    // Vẽ các phần hình tròn của đám mây
    final cloudCenter = Offset(
      (size.width / 2 - 15) * scaleFactor,
      (size.height / 2 - 20) * scaleFactor,
    );
    canvas.drawCircle(
        cloudCenter, 54 * scaleFactor, bodyCloud); // Đám mây ở giữa
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
