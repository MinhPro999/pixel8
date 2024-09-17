import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const ScreenProfile());
}

class ScreenProfile extends StatelessWidget {
  const ScreenProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ScreenBackground(),
    );
  }
}

class ScreenBackground extends StatelessWidget {
  const ScreenBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage('images/background.jpg'),
          fit: BoxFit.cover,
        )),
        child: const SafeArea(
          child: Stack(
            children: [
              Positioned.fill(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TopBarTouch(),
                    SizedBox(
                      height: 110,
                    ),
                    PictrueProfile(),
                    InfomationProfile(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class InfomationProfile extends StatefulWidget {
  const InfomationProfile({super.key});

  @override
  State<InfomationProfile> createState() => _InfomationProfileState();
}

class _InfomationProfileState extends State<InfomationProfile> {
  DateTime? _selectedDate; // Di chuyển _selectedDate vào bên trong State

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160, // Tăng chiều cao cho đủ không gian chứa các phần tử
      width: double.infinity,

      child: Row(
        mainAxisAlignment: MainAxisAlignment.center, // Căn giữa các phần tử
        children: [
          const Text(
            'Information',
            style: TextStyle(color: Colors.white70, fontSize: 16),
          ),
          const SizedBox(height: 10), // Thêm khoảng cách giữa các phần tử
          Row(
            children: [
              const Text(
                'Date of birth',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 40,
                width: 120,
                child: Text(
                  _selectedDate != null
                      ? '${_selectedDate!.day}/${_selectedDate!.month}/${_selectedDate!.year}'
                      : 'Chọn ngày',
                  style: const TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () => _selectDate(context),
                child: const Icon(Icons.calendar_month),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: _selectedDate ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (pickedDate != null && pickedDate != _selectedDate) {
      setState(() {
        _selectedDate = pickedDate;
      });
    }
  }
}

// class Infomation extends StatelessWidget {
//   const Infomation({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const SizedBox(
//         height: 80,
//         width: double.infinity,
//         child: Positioned(
//             top: 10,
//             left: 20,
//             child: SizedBox(
//               height: 60,
//               width: double.infinity,
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text(
//                     'infomation',
//                     style: TextStyle(color: Colors.white70, fontSize: 16),
//                   ),
//                   Text(
//                     'Date of birth',
//                     style: TextStyle(color: Colors.white, fontSize: 18),
//                   ),
//                   SizedBox(
//                     height: 40,
//                     width: 120,
//                     child: Text('data'),
//                   ),
//                   ElevatedButton(
//                       onPressed: onPressed, child: Icon(Icons.calendar_month)),
//                 ],
//               ),
//             )));
//   }
// }

class TopBarTouch extends StatelessWidget {
  const TopBarTouch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 60,
        width: double.infinity,
        child: Positioned(
          top: 20,
          right: 20,
          child: SizedBox(
              height: 60,
              width: double.infinity,
              child: Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceBetween, // Căn đều các widget
                children: [
                  IconButton(
                    onPressed: () {
                      print('back');
                    },
                    icon: const Icon(Icons.arrow_back_ios),
                    color: Colors.white,
                  ),
                  const Text(
                    'profile',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      print("Logout pressed");
                    },
                    icon: const Icon(Icons.logout),
                    color: Colors.white,
                  ),
                ],
              )),
        ));
  }
}

class PictrueProfile extends StatelessWidget {
  const PictrueProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center, // Căn giữa theo chiều dọc
      children: [
        Center(
          child: Container(
            width: 125,
            height: 125,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('images/ava.jpg'),
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
        ),
        const SizedBox(height: 10), // Thêm khoảng cách giữa ảnh và tên
        const Text(
          'Hữu Minh',
          style: TextStyle(color: Colors.white, fontSize: 36),
        ),
      ],
    );
  }
}
