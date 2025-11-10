import 'package:flutter/material.dart';

class Exercise1 extends StatelessWidget {
  const Exercise1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsetsGeometry.symmetric(
          horizontal: 20,
          vertical: 40,
        ),
        child: Column(
          children: [
            HobbyCard(
              text: "Travelling",
              icon: Icons.travel_explore,
              cardColor: Colors.green,
            ),
            HobbyCard(
              text: "Skating",
              icon: Icons.skateboarding,
              cardColor: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}

class HobbyCard extends StatelessWidget {
  final String text;
  final IconData icon;
  final Color textColor;
  final Color iconColor;
  final Color cardColor;

  const HobbyCard({
    super.key,
    required this.text,
    required this.icon,
    this.textColor = Colors.white,
    this.iconColor = Colors.white,
    this.cardColor = Colors.blue,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 30),
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 30, right: 20),
              child: Icon(icon, color: Colors.white),
            ),
            Text(text, style: TextStyle(fontSize: 20, color: textColor)),
          ],
        ),
      ),
    );
  }
}
