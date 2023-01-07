import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../controllers/home_controler.dart';

class BottomNavigationWidget extends StatefulWidget {
  const BottomNavigationWidget({super.key});

  @override
  State<BottomNavigationWidget> createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  final controller = HomeController.instance;
  int valueCurrent = 0;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        return BottomNavigationBar(
          elevation: 0,
          backgroundColor: Colors.white38.withOpacity(0.9),
          currentIndex: controller.valueCurrentNavigation,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: (value) {
            controller.valueCurrentNavigation = value;
            if (value == 0) {
              Navigator.of(context).pushReplacementNamed('/home');
            } else if (value == 1) {
              Navigator.of(context).pushReplacementNamed('/investments');
            } else if (value == 2) {
              setState(() {}); // setState just to illustrate purple icon
            }
          },
          items: const [
            BottomNavigationBarItem(
              icon: FaIcon(
                FontAwesomeIcons.arrowDownUpAcrossLine,
                size: 20,
              ),
              label: 'Conta',
            ),
            BottomNavigationBarItem(
              icon: FaIcon(
                FontAwesomeIcons.dollarSign,
                size: 20,
              ),
              label: 'Investimentos',
            ),
            BottomNavigationBarItem(
              icon: FaIcon(
                FontAwesomeIcons.bagShopping,
                size: 20,
              ),
              label: 'NuShop',
            ),
          ],
        );
      },
    );
  }
}
