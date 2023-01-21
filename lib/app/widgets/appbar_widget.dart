import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mockup_nubank_flutter/app/controllers/home_controler.dart';

class AppBarWidget extends StatefulWidget {
  const AppBarWidget({super.key});

  @override
  State<AppBarWidget> createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget> {
  @override
  Widget build(BuildContext context) {
    final controller = HomeController.instance;
    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        return Column(
          children: [
            AppBar(
              elevation: 0,
              leadingWidth: 0,
              automaticallyImplyLeading: true,
              toolbarHeight: 60,
              title: Padding(
                padding: const EdgeInsets.only(left: 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        IconButton(
                          splashColor: Colors.transparent,
                          splashRadius: 20,
                          padding: EdgeInsets.zero,
                          constraints: const BoxConstraints(),
                          onPressed: () {},
                          icon: const Icon(
                            Icons.add_photo_alternate_outlined,
                          ),
                        ),
                        const Spacer(),
                        IconButton(
                          onPressed: () => controller.changeVisibility(),
                          icon: FaIcon(
                            controller.isHidden
                                ? FontAwesomeIcons.eyeSlash
                                : FontAwesomeIcons.solidEye,
                            size: 18,
                            color: Colors.white,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const FaIcon(
                            FontAwesomeIcons.circleQuestion,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const FaIcon(
                            FontAwesomeIcons.userPlus,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
