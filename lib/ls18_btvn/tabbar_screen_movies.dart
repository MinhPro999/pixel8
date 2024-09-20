import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main(List<String> args) {
  runApp(const MaterialApp(
    home: TabbarCinama(),
  ));
}

class TabbarCinama extends StatefulWidget {
  const TabbarCinama({super.key});

  @override
  State<TabbarCinama> createState() => _TabbarCinamaState();
}

class _TabbarCinamaState extends State<TabbarCinama> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Số lượng tab
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 63, 8, 65),
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_back_ios),
            color: Colors.white,
          ),
          centerTitle: true,
          title: const Text(
            'The Batman',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.normal,
            ),
          ),
          bottom: const TabBar(
            labelColor: Colors.white,
            unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(text: 'About'),
              Tab(text: 'Session'),
            ],
          ),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: null,
                      child: SvgPicture.asset(
                        'icon/svg/Calendar.svg',
                        height: 24,
                        width: 24,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: null,
                      child: SvgPicture.asset(
                        'icon/svg/Sort.svg',
                        height: 24,
                        width: 24,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
