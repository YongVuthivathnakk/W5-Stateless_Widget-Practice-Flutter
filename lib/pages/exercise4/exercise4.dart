import 'package:flutter/material.dart';

enum Weather {
  phnomPenh(
    city: "Phnom Penh",
    image: 'assets/images/ex4/cloudy.png',
    min: '10.0',
    max: '30.0',
    temperature: '12.2',
    color1: Color(0xFFD78FEE),
    color2: Color(0xFF9B5DE0),
  ),
  paris(
    city: "Paris",
    image: 'assets/images/ex4/sunnyCloudy.png',
    min: '10.0',
    max: '40.0',
    temperature: '22.2',
    color1: Color(0xFF56DFCF),
    color2: Color(0xFFADEED9),
  ),

  rome(
    city: "Rome",
    image: 'assets/images/ex4/sunny.png',
    min: '10.0',
    max: '40.0',
    temperature: '45.2',
    color1: Color(0xFFDC0E0E),
    color2: Color(0xFFFE6244),
  ),
  toulouse(
    city: "Toulouse",
    image: 'assets/images/ex4/veryCloudy.png',
    min: '10.0',
    max: '40.0',
    temperature: '45.2',
    color1: Color(0xFFFCB53B),
    color2: Color(0xFFFFE797),
  );

  final String city;
  final String image;
  final String min;
  final String max;
  final String temperature;
  final Color color1;
  final Color color2;

  const Weather({
    required this.city,
    required this.image,
    required this.min,
    required this.max,
    required this.temperature,
    this.color1 = const Color(0xFFD78FEE),
    this.color2 = const Color(0xFF9B5DE0),
  });
}

class Exercise4 extends StatelessWidget {
  const Exercise4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              // Cards Container
              children: [
                WeatherButton(
                  city: Weather.phnomPenh.city,
                  image: Weather.phnomPenh.image,
                  min: Weather.phnomPenh.min,
                  max: Weather.phnomPenh.max,
                  temperature: Weather.phnomPenh.temperature,
                  color1: Weather.phnomPenh.color1,
                  color2: Weather.phnomPenh.color2,
                ),
                WeatherButton(
                  city: Weather.paris.city,
                  image: Weather.paris.image,
                  min: Weather.paris.min,
                  max: Weather.paris.max,
                  temperature: Weather.paris.temperature,
                  color1: Weather.paris.color1,
                  color2: Weather.paris.color2,
                ),
                WeatherButton(
                  city: Weather.rome.city,
                  image: Weather.rome.image,
                  min: Weather.rome.min,
                  max: Weather.rome.max,
                  temperature: Weather.rome.temperature,
                  color1: Weather.rome.color1,
                  color2: Weather.rome.color2,
                ),
                WeatherButton(
                  city: Weather.toulouse.city,
                  image: Weather.toulouse.image,
                  min: Weather.toulouse.min,
                  max: Weather.toulouse.max,
                  temperature: Weather.toulouse.temperature,
                  color1: Weather.toulouse.color1,
                  color2: Weather.toulouse.color2,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class WeatherButton extends StatelessWidget {
  final String city;
  final String image;
  final String min;
  final String max;
  final String temperature;
  final Color color1;
  final Color color2;

  const WeatherButton({
    super.key,
    required this.city,
    required this.image,
    required this.min,
    required this.max,
    required this.temperature,
    this.color1 = const Color(0xFFD78FEE),
    this.color2 = const Color(0xFF9B5DE0),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      child: PhysicalModel(
        //Card model
        color: Colors.transparent,
        shadowColor: const Color.fromRGBO(238, 238, 238, 1),
        borderRadius: BorderRadius.circular(10),
        elevation: 5.0,

        child: Container(
          clipBehavior: Clip.antiAlias,
          padding: EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 40),
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [color1, color2]),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(backgroundImage: AssetImage(image), radius: 30),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        city,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Min: $min°C",
                        style: TextStyle(color: Colors.grey.shade400),
                      ),
                      Text(
                        "Max: $max°C",
                        style: TextStyle(color: Colors.grey.shade400),
                      ),
                    ],
                  ),
                ],
              ),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    left: -40,
                    top: -40,
                    child: Container(
                      height: 200,
                      width: 200,

                      decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [color1, color2]),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  Text(
                    "$temperature°C",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
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
