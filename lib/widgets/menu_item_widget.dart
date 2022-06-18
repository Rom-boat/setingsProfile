import 'package:flutter/material.dart';

class MenuItemWidget extends StatelessWidget {

  const MenuItemWidget({
    Key? key,
    required this.text,
    required this.icon,
    required this.subText,
    required this.iconColor
  }) : super(key: key);

  final String text;
  final String subText;
  final IconData icon;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: iconColor,), // icon widget
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 240),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      text, // main name of the widget
                      style: const TextStyle(fontSize: 19, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 7),
                    Text(
                      subText, // sub main name of the widget
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}