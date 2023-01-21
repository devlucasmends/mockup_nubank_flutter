import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class OperationsComponents extends StatelessWidget {
  final FaIcon icon;
  final String text;
  final String textClique;

  const OperationsComponents({
    super.key,
    required this.icon,
    required this.text,
    required this.textClique,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: GestureDetector(
            onTap: (() {
              debugPrint(textClique);
            }),
            child: Container(
              height: 80,
              width: 80,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 235, 235, 235),
                shape: BoxShape.circle,
              ),
              child: Center(child: icon),
            ),
          ),
        ),
        Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}
