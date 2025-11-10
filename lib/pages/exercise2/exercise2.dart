import 'package:flutter/material.dart';

enum ButtonColor { primary, secondary, disabled }

enum IconPosition { left, right }

extension AppColorX on ButtonColor {
  Color get color {
    switch (this) {
      case ButtonColor.primary:
        return Colors.blue;
      case ButtonColor.secondary:
        return Colors.green;
      case ButtonColor.disabled:
        return Colors.grey;
    }
  }
}

class Exercise2 extends StatelessWidget {
  const Exercise2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Custom Buttons")),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
        child: Column(
          children: [
            CustomButtons(
              label: 'Submit',
              icon: Icons.check,
              background: ButtonColor.primary.color,
            ),
            SizedBox(height: 20),
            CustomButtons(
              label: 'Time',
              icon: Icons.access_time,
              background: ButtonColor.secondary.color,
            ),
            SizedBox(height: 20),
            CustomButtons(
              label: "Account",
              icon: Icons.account_tree,
              iconPosition: IconPosition.right,
              background: ButtonColor.disabled.color,
            ),
          ],
        ),
      ),
    );
  }
}

class CustomButtons extends StatelessWidget {
  final String label;
  final IconData icon;
  final Color background;
  final Color textColor;
  final Color iconColor;
  final IconPosition iconPosition;
  const CustomButtons({
    super.key,
    required this.label,
    required this.icon,
    this.textColor = Colors.blueGrey,
    this.background = Colors.blue,
    this.iconPosition = IconPosition.left,
    this.iconColor = Colors.blueGrey,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (iconPosition == IconPosition.left) ...{
            Icon(icon, color: iconColor),
            SizedBox(width: 10),
            Text(label, style: TextStyle(color: textColor)),
          } else ...{
            Text(label, style: TextStyle(color: textColor)),
            SizedBox(width: 10),
            Icon(icon, color: iconColor),
          },
        ],
      ),
    );
  }
}
