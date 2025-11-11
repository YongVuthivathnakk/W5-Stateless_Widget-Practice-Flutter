import 'package:flutter/material.dart';

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
                PhysicalModel(
                  //Card model
                  color: Colors.white,
                  shadowColor: const Color.fromRGBO(238, 238, 238, 1),
                  borderRadius: BorderRadius.circular(10),
                  elevation: 5.0,

                  child: Container(
                    padding: EdgeInsets.only(
                      left: 15,
                      right: 15,
                      top: 15,
                      bottom: 40,
                    ),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(
                            "assets/images/ex4/cloudy.png",
                          ),
                          radius: 30,
                        ),
                        SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Phnom Penh",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Min: 10.0°C",
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              "Max: 30.0°C",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
