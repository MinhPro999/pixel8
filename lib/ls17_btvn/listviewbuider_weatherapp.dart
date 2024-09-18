import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main(List<String> args) {
  runApp(const ScreenLisstviewWeatherApp());
}

class ScreenLisstviewWeatherApp extends StatelessWidget {
  const ScreenLisstviewWeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor:
              const Color.fromARGB(255, 10, 14, 23).withOpacity(0.6),
          title: const Text(
            'Weather list of Cities',
            style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.normal),
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
        body: const BodyScreenListview(),
      ),
    );
  }
}

class BodyScreenListview extends StatelessWidget {
  const BodyScreenListview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // Danh sách các dữ liệu thời tiết
    final weatherData = [
      {
        'city': 'Hạ Long',
        'time': '09:41',
        'weatherType': 'Sunny somethime have rainy',
        'temp': 28.5,
        'backgroundImage': 'images/images_weather/select2.jpg',
        'iconWeather': 'icon/svg/weatherIcon245.svg'
      },
      {
        'city': 'Hà Nội',
        'time': '09:41',
        'weatherType': 'Sunsine',
        'temp': 29,
        'backgroundImage': 'images/images_weather/select1.jpg',
        'iconWeather': 'icon/svg/weatherIcon245.svg'
      },
      {
        'city': 'Bắc Kinh',
        'time': '10:41',
        'weatherType': 'Stormy and wind',
        'temp': 18,
        'backgroundImage': 'images/images_weather/select3.jpg',
        'iconWeather': 'icon/svg/weatherIcon260.svg'
      },
      {
        'city': 'Thượng Hải',
        'time': '10:41',
        'weatherType': 'Windy and cloud',
        'temp': 19.3,
        'backgroundImage': 'images/images_weather/select3.jpg',
        'iconWeather': 'icon/svg/weatherIcon245.svg'
      },
      {
        'city': 'Paris',
        'time': '02:41',
        'weatherType': 'Cloud night',
        'temp': 16.2,
        'backgroundImage': 'images/images_weather/night.png',
        'iconWeather': 'icon/svg/weatherIcon260.svg'
      },
      {
        'city': 'Habana',
        'time': '21:41',
        'weatherType': 'Rainy',
        'temp': 18.5,
        'backgroundImage': 'images/images_weather/bg.jpg',
        'iconWeather': 'icon/svg/weatherIcon245.svg'
      },
      {
        'city': 'Tokyo',
        'time': '11:41',
        'weatherType': 'Sunny',
        'temp': 16.2,
        'backgroundImage': 'images/images_weather/night.png',
        'iconWeather': 'icon/svg/weatherIcon260.svg'
      },
      {
        'city': 'New York',
        'time': '21:41',
        'weatherType': 'Cloud night',
        'temp': 16.2,
        'backgroundImage': 'images/images_weather/bg.jpg',
        'iconWeather': 'icon/svg/weatherIcon245.svg'
      },
      {
        'city': 'Mandiver',
        'time': '03:41',
        'weatherType': 'Windy',
        'temp': 16.2,
        'backgroundImage': 'images/images_weather/night.png',
        'iconWeather': 'icon/svg/weatherIcon245.svg'
      }
    ];

    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/images_weather/bgg.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView.builder(
          itemCount: weatherData.length,
          itemBuilder: (context, index) {
            final item = weatherData[index];
            return RowItem(
              city: item['city'] as String,
              time: item['time'] as String,
              weatherType: item['weatherType'] as String,
              temp: item['temp'] as double,
              backgroundImage: item['backgroundImage'] as String,
              iconWeather: item['iconWeather'] as String,
            );
          },
        ),
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
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.only(bottom: 24),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
              image: AssetImage(backgroundImage), fit: BoxFit.cover)),
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
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SvgPicture.asset(
          iconWeather,
          width: 132,
          height: 98,
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          '$temp°C',
          style: const TextStyle(
              fontSize: 48, color: Colors.white, fontWeight: FontWeight.bold),
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
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          city,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 36,
            fontWeight: FontWeight.w600,
            shadows: [
              Shadow(
                offset: Offset(2.0, 2.0), // Vị trí bóng đổ (x, y)
                blurRadius: 3.0, // Mức độ mờ của bóng
                color: Color.fromARGB(255, 0, 0, 0), // Màu của bóng (đen)
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(time,
            style: const TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.w100)),
        const SizedBox(
          height: 8,
        ),
        Text(weatherType,
            style: const TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.w600)),
      ],
    );
  }
}
