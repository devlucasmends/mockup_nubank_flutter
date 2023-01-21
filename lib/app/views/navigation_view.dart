import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mockup_nubank_flutter/app/widgets/appbar_widget.dart';
import 'package:mockup_nubank_flutter/app/controllers/home_controler.dart';
import 'package:mockup_nubank_flutter/app/widgets/bottom_navigation_widget.dart';

class NavigationView extends StatefulWidget {
  const NavigationView({super.key});

  @override
  State<NavigationView> createState() => _NavigationViewState();
}

class _NavigationViewState extends State<NavigationView> {
  final controller = HomeController.instance;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        return Scaffold(
          extendBody: true,
          appBar: const PreferredSize(
            preferredSize: Size.fromHeight(60),
            child: AppBarWidget(),
          ),
          body: Column(
            children: const [
              Expanded(child: RouterOutlet()),
            ],
          ),
          bottomNavigationBar: const BottomNavigationWidget(),
        );
      },
    );
  }
}
