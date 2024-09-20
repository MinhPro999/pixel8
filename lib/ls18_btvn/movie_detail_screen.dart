import 'package:flutter/material.dart';
import 'package:flutter_learning/lesson_18_assignment/widgets/about_content.dart';
import 'package:flutter_learning/lesson_18_assignment/widgets/sessions_content.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MovieDetailScreen extends StatefulWidget {
  const MovieDetailScreen({super.key});

  @override
  State<MovieDetailScreen> createState() => _MovieDetailScreenState();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "Inter"),
      home: const MovieDetailScreen(),
    );
  }
}

class _MovieDetailScreenState extends State<MovieDetailScreen>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1A2232),
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Color(0xff637394),
            )),
        title: const Text(
          "The Batman",
          style: TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w700),
        ),
        backgroundColor: const Color(0xff1A2232),
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: const Color(0xffFF8036),
          unselectedLabelStyle: const TextStyle(
            color: Color(0xFF637394),
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
          labelStyle: TextStyle(
              color: const Color(0xffFF8036),
              fontSize: 16,
              fontWeight: FontWeight.w700,
              shadows: [
                Shadow(
                  blurRadius: 16,
                  color: const Color(0xffFF8036).withOpacity(.5),
                )
              ]),
          indicatorSize: TabBarIndicatorSize.tab,
          indicatorWeight: 2,
          dividerColor: Colors.transparent,
          tabs: const [
            Tab(
              text: "About",
            ),
            Tab(
              text: "Sessions",
            ),
          ],
        ),
      ),
      body: TabBarView(
          controller: _tabController,
          children: const [AboutContent(), SessionsContent()]),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }
}
