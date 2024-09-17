// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main(List<String> args) {
  runApp(const ScreenLisstviewWeatherApp());
}

class ScreenLisstviewWeatherApp extends StatelessWidget {
  const ScreenLisstviewWeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ListviewScreen(),
    );
  }
}

class ListviewScreen extends StatelessWidget {
  const ListviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 10, 14, 23).withOpacity(0.6),
        title: const Text(
          'List weather City',
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.normal),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu,
                color: Colors.white,
              ))
        ],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/images_weather/bgg.jpg'),
                fit: BoxFit.cover)),
      ),
    );
  }
}

class RowItem extends StatelessWidget {
  final String city;
  final String time;
  final String weatherType;
  final double temp;
  final String backgroundImage;
  final String iconWeather;
  const RowItem({
    super.key,
    required this.city,
    required this.time,
    required this.weatherType,
    required this.temp,
    required this.backgroundImage,
    required this.iconWeather,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image: const DecorationImage(image: AssetImage('backgroundImage'))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InfoRowItem(city: city, time: time, weatherType: weatherType),
          IconRowItem(iconWeather: iconWeather, temp: temp),
        ],
      ),
    );
  }
}

class IconRowItem extends StatelessWidget {
  const IconRowItem({
    super.key,
    required this.iconWeather,
    required this.temp,
  });

  final String iconWeather;
  final double temp;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(iconWeather),
        const SizedBox(
          height: 8,
        ),
        Text(
          '$temp°C',
          style: const TextStyle(fontSize: 32, color: Colors.white),
        ),
      ],
    );
  }
}

class InfoRowItem extends StatelessWidget {
  const InfoRowItem({
    super.key,
    required this.city,
    required this.time,
    required this.weatherType,
  });

  final String city;
  final String time;
  final String weatherType;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(city, style: const TextStyle(color: Colors.white, fontSize: 12)),
        SizedBox(
          height: 8,
        ),
        Text(time, style: const TextStyle(color: Colors.white, fontSize: 8)),
        SizedBox(
          height: 8,
        ),
        Text(weatherType,
            style: const TextStyle(color: Colors.white, fontSize: 8)),
      ],
    );
  }
}
