import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mockup_nubank_flutter/app/components/bottom_navigation_widget.dart';
import 'package:mockup_nubank_flutter/app/components/investments_buttons.dart';
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
                InvestmentsButtons(
                  width: width,
                  colorSub: colorSub,
                  icon: FontAwesomeIcons.box,
                  textClique: 'Cliquei Caixinha',
                  title: 'Caixinhas',
                  textValue: 'Conhecer',
                  colorText: Colors.deepPurpleAccent,
                ),
                const SizedBox(
                  height: 15,
                ),
                InvestmentsButtons(
                  width: width,
                  colorSub: colorSub,
                  icon: Icons.bar_chart,
                  textClique: 'Cliquei Investimentos',
                  title: 'Investimentos',
                  textValue:
                      'R\$ ${controller.isHidden ? '****' : user.investimentsValue.toStringAsFixed(2).replaceAll('.', ',')}',
                ),
                const SizedBox(
                  height: 15,
                ),
                InvestmentsButtons(
                  width: width,
                  colorSub: colorSub,
                  icon: Icons.currency_bitcoin_sharp,
                  textClique: 'Cliquei Cripto',
                  title: 'Cripto',
                  textValue:
                      'R\$ ${controller.isHidden ? '****' : user.criptoValue.toStringAsFixed(2).replaceAll('.', ',')}',
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
                InvestmentsButtons(
                  width: width,
                  colorSub: colorSub,
                  icon: FontAwesomeIcons.solidHeart,
                  textClique: 'Cliquei Seguro de Vida',
                  title: 'Seguro vida',
                  textValue: 'Conhecer',
                  colorText: Colors.deepPurpleAccent,
                ),
                const SizedBox(
                  height: 15,
                ),
                InvestmentsButtons(
                  width: width,
                  colorSub: colorSub,
                  icon: Icons.phone_android,
                  textClique: 'Cliquei Seguro de Celular',
                  title: 'Seguro celular',
                  textValue: 'Conhecer',
                  colorText: Colors.deepPurpleAccent,
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
