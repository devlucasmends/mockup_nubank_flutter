import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mockup_nubank_flutter/app/components/bottom_navigation_widget.dart';
import 'package:mockup_nubank_flutter/app/controllers/home_controler.dart';
import 'package:mockup_nubank_flutter/app/models/account_data_model.dart';

import '../components/appbar_widget.dart';

class InvestmentsView extends StatefulWidget {
  const InvestmentsView({super.key});

  @override
  State<InvestmentsView> createState() => _InvestmentsViewState();
}

class _InvestmentsViewState extends State<InvestmentsView> {
  final user = AccountDataModel();
  final controller = HomeController.instance;
  final colorSub = const Color.fromARGB(255, 235, 235, 235);
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        return Scaffold(
          appBar: const PreferredSize(
            preferredSize: Size.fromHeight(60),
            child: AppBarWidget(),
          ),
          body: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Acompanhe seu dinheiro',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 15),
                GestureDetector(
                  // ignore: avoid_print
                  onTap: () => print('Cliquei Caixinhas'),
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
                        children: const [
                          FaIcon(FontAwesomeIcons.box),
                          SizedBox(width: 20),
                          Text(
                            'Caixinhas',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Expanded(child: SizedBox.shrink()),
                          Text(
                            'Conhecer',
                            style: TextStyle(
                              color: Colors.deepPurpleAccent,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                GestureDetector(
                  // ignore: avoid_print
                  onTap: () => print('Cliquei Investimentos'),
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
                          const FaIcon(Icons.bar_chart),
                          const SizedBox(width: 20),
                          const Text(
                            'Investimentos',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const Expanded(child: SizedBox.shrink()),
                          Text(
                            'R\$ ${controller.isHidden ? '****' : user.investimentsValue.toStringAsFixed(2).replaceAll('.', ',')}',
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                GestureDetector(
                  // ignore: avoid_print
                  onTap: () => print('Cliquei Cripto'),
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
                          const FaIcon(FontAwesomeIcons.box),
                          const SizedBox(width: 20),
                          const Text(
                            'Cripto',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const Expanded(child: SizedBox.shrink()),
                          Text(
                            'R\$ ${controller.isHidden ? '****' : user.criptoValue.toStringAsFixed(2).replaceAll('.', ',')}',
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  'Seguros',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                GestureDetector(
                  // ignore: avoid_print
                  onTap: () => print('Cliquei Seguro de Vida'),
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
                        children: const [
                          FaIcon(FontAwesomeIcons.heart),
                          SizedBox(width: 20),
                          Text(
                            'Seguro vida',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Expanded(child: SizedBox.shrink()),
                          Text(
                            'Conhecer',
                            style: TextStyle(
                              color: Colors.deepPurpleAccent,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                GestureDetector(
                  // ignore: avoid_print
                  onTap: () => print('Cliquei Seguro de Celular'),
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
                        children: const [
                          FaIcon(Icons.phone_android),
                          SizedBox(width: 20),
                          Text(
                            'Seguro celular',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Expanded(child: SizedBox.shrink()),
                          Text(
                            'Conhecer',
                            style: TextStyle(
                              color: Colors.deepPurpleAccent,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          bottomNavigationBar: const BottomNavigationWidget(),
        );
      },
    );
  }
}
