import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InvestmentsButtons extends StatelessWidget {
  final double width;
  final Color colorSub;
  final IconData icon;
  final String title;
  final String textClique;
  final String textValue;
  final Color colorText;

  const InvestmentsButtons({
    required this.width,
    super.key,
    required this.colorSub,
    required this.icon,
    required this.textClique,
    required this.title,
    required this.textValue,
    this.colorText = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => debugPrint(textClique),
      child: Container(
        height: 50,
        width: width,
        decoration: BoxDecoration(
          color: colorSub,
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              FaIcon(icon),
              const SizedBox(width: 20),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Spacer(),
              Text(
                textValue,
                style: TextStyle(
                  color: colorText,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
