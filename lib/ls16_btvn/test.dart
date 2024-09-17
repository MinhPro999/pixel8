import 'package:flutter/material.dart';

void main(List<String> args) {
  // runApp(const ScreenProfile());
  runApp(const ScreenNoHome());
}

// class ScreenProfile extends StatelessWidget {
//   const ScreenProfile({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//         fontFamily: 'NanumFont',
//         colorScheme: ColorScheme.fromSwatch().copyWith(
//           primary: Colors.amber,
//         ),
//         buttonTheme: ButtonThemeData(
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(12),
//           ),
//         ),
//       ),
//       home: const ScreenBackground(),
//     );
//   }
// }

// class ScreenBackground extends StatelessWidget {
//   const ScreenBackground({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         width: double.infinity,
//         height: double.infinity,
//         decoration: const BoxDecoration(
//           image: DecorationImage(
//             image: AssetImage("images/cover.jpg"),
//             fit: BoxFit.cover, // Đảm bảo ảnh được làm dạng cover toàn màn hình
//           ),
//         ),
//         child: Stack(
//           children: [
//             Positioned(
//               top: 20,
//               right: 20,
//               left: 20, // Căn chỉnh vị trí của toàn bộ `Row`
//               child: Row(
//                 mainAxisAlignment:
//                     MainAxisAlignment.spaceBetween, // Căn đều hai bên
//                 children: [
//                   IconButton(
//                     onPressed: () {
//                       print('Back pressed');
//                     },
//                     icon: const Icon(Icons.arrow_back_ios),
//                     color: Colors.white,
//                   ),
//                   const Text(
//                     'Profile',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 22,
//                     ),
//                   ),
//                   IconButton(
//                     onPressed: () {
//                       print("Logout pressed");
//                     },
//                     icon: const Icon(Icons.logout),
//                     color: Colors.white,
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

class ScreenNoHome extends StatelessWidget {
  const ScreenNoHome({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ImageScreen(),
    );
  }
}

class ImageScreen extends StatelessWidget {
  const ImageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/cover.jpg"), fit: BoxFit.fitWidth),
        ),
      ),
    );
  }
}
