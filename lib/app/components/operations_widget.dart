import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class OperationsWidget extends StatelessWidget {
  final FaIcon icon;
  final String text;
  final String textClique;

  const OperationsWidget({
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
              // ignore: avoid_print
              print(textClique);
            }),
            child: Container(
              height: 70,
              width: 70,
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
