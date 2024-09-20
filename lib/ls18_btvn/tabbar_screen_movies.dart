import 'package:flutter/material.dart';

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
        body: const SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 76,
                    width: 125,
                  ),
                  SizedBox(
                    height: 76,
                    width: 125,
                  ),
                  SizedBox(
                    height: 76,
                    width: 125,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
