import 'package:flutter/material.dart';

void main() {
  runApp(const MyAppScreen());
}

class MyAppScreen extends StatelessWidget {
  const MyAppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'NanumFont',
        primaryColor: Colors.amber,
        buttonTheme: ButtonThemeData(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
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
              Color.fromARGB(255, 19, 18, 31),
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
                    SizedBox(height: 40),
                    TextEmail(),
                    SizedBox(height: 40),
                    PassWord(),
                    ForgotPasswordText(),
                    SizedBox(height: 20),
                    LoginButton(),
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

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      child: Container(
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              Color.fromARGB(255, 239, 245, 86),
              Color.fromARGB(255, 150, 247, 159)
            ],
          ),
          borderRadius: BorderRadius.circular(12), // Tạo bo góc cho nút bấm
        ),
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 20),
            backgroundColor: Colors.transparent, // Đặt màu nền trong suốt
            shadowColor: Colors.transparent, // Loại bỏ bóng
          ),
          child: const Text(
            'LOGIN',
            style: TextStyle(
              color: Color.fromARGB(255, 19, 18, 31),
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}

class ForgotPasswordText extends StatelessWidget {
  const ForgotPasswordText({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: const Text(
        'Forgot password?',
        style: TextStyle(color: Colors.red),
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
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 400,
      child: TextFormField(
        obscureText: _isObscure,
        decoration: InputDecoration(
          labelText: 'Password',
          labelStyle: const TextStyle(color: Colors.white70),
          hintText: 'Enter your password',
          hintStyle: const TextStyle(color: Colors.grey),
          prefixIcon: const Icon(
            Icons.lock,
            color: Colors.white70,
          ),
          suffixIcon: IconButton(
            onPressed: () {
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
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      width: 400,
      child: TextFormField(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        decoration: const InputDecoration(
          prefixIcon: Icon(
            Icons.person,
            color: Colors.white70,
          ),
          labelText: 'User/Email',
          labelStyle: TextStyle(color: Colors.white70),
          hintText: 'Enter your email',
          hintStyle: TextStyle(color: Colors.grey),
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Vui lòng nhập user hoặc email hợp lệ';
          }
          return null;
        },
      ),
    );
  }
}

class LogoTopScreen extends StatelessWidget {
  const LogoTopScreen({super.key});

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
            size: const Size(300, 300),
            painter: CloudPainter(),
          ),
        ),
        const SizedBox(height: 40),
        const Text(
          'Login app and continue',
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
    const scaleFactor = 1.3;

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

    final cloudCenter = Offset(
      (size.width / 2 - 15) * scaleFactor,
      (size.height / 2 - 20) * scaleFactor,
    );
    canvas.drawCircle(cloudCenter, 54 * scaleFactor, bodyCloud);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
