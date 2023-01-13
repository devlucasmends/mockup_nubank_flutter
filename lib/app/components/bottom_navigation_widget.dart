import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mockup_nubank_flutter/app/views/home_view.dart';
import 'package:mockup_nubank_flutter/app/views/investiments_view.dart';
import 'package:page_transition/page_transition.dart';

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
  void initState() {
    super.initState();
  }

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
            // controller.valueCurrentNavigation = value;
            controller.changePage(value);
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
