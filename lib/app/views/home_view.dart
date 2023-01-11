import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mockup_nubank_flutter/app/components/appbar_widget.dart';
import 'package:mockup_nubank_flutter/app/components/bottom_navigation_widget.dart';
import 'package:mockup_nubank_flutter/app/components/operations_widget.dart';
import 'package:mockup_nubank_flutter/app/controllers/home_controler.dart';
import 'package:mockup_nubank_flutter/app/models/account_data_model.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final user = AccountDataModel();

  final controller = HomeController.instance;
  final colorSub = const Color.fromARGB(255, 235, 235, 235);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        return Scaffold(
          extendBody: true,
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(110),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const AppBarWidget(),
                Container(
                  alignment: Alignment.centerLeft,
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.deepPurple,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      'Olá, ${user.userName}',
                      style: const TextStyle(
                        color: Color(0xffffffff),
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          body: ListView(
            children: [
              _accountSection(),
              _bankingOperationsSection(),
              _userCards(),
              _newsCards(),
              Divider(thickness: 2, color: colorSub),
              _credCardsScetion(),
              Divider(thickness: 2, color: colorSub),
              _followToo(),
              Divider(thickness: 2, color: colorSub),
              _loanSection(),
              Divider(thickness: 2, color: colorSub),
              _findMoreSection(),
            ],
          ),
          bottomNavigationBar: const BottomNavigationWidget(),
        );
      },
    );
  }

  Widget _accountSection() {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SizedBox(
          height: 60.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: const [
                  Text(
                    'Conta',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(top: 8, right: 10),
                    child: FaIcon(
                      FontAwesomeIcons.chevronRight,
                      size: 14,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Text(
                controller.isHidden
                    ? '****'
                    : 'R\$ ${user.accountBalance.toStringAsFixed(2).replaceAll('.', ',')}',
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _bankingOperationsSection() {
    return SizedBox(
      height: 150,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: const [
            OperationsWidget(
              icon: FaIcon(FontAwesomeIcons.pix),
              text: 'Área Pix',
              textClique: 'Cliquei Pix',
            ),
            OperationsWidget(
              icon: FaIcon(FontAwesomeIcons.barcode),
              text: 'Pagar',
              textClique: 'Cliquei Pagar',
            ),
            OperationsWidget(
              icon: FaIcon(FontAwesomeIcons.handHoldingDollar),
              text: 'Pegar\nemprestado',
              textClique: 'Cliquei Emprestimo',
            ),
            OperationsWidget(
              icon: FaIcon(FontAwesomeIcons.moneyBillTransfer),
              text: 'Transferir',
              textClique: 'Cliquei Transferir',
            ),
            OperationsWidget(
              icon: FaIcon(FontAwesomeIcons.moneyBill),
              text: 'Depositar',
              textClique: 'Cliquei Depositar',
            ),
            OperationsWidget(
              icon: FaIcon(FontAwesomeIcons.pix),
              text: 'Área Pix',
              textClique: 'Cliquei Pix',
            ),
          ],
        ),
      ),
    );
  }

  Widget _userCards() {
    return Padding(
      padding: const EdgeInsets.only(
          left: 15.0, top: 15.0, right: 35.0, bottom: 15.0),
      child: GestureDetector(
        onTap: () {
          debugPrint('Meus Cartões');
        },
        child: ElevatedButton(
          onPressed: () {
            debugPrint('Cliquei Meus Cartões');
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: colorSub,
            fixedSize: Size(MediaQuery.of(context).size.width, 55),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Row(
            children: const [
              FaIcon(
                FontAwesomeIcons.creditCard,
                color: Colors.black,
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                'Meus Cartões',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _newsCards() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          children: [
            Container(
              height: 75,
              width: 260,
              decoration: BoxDecoration(
                color: colorSub,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: 'Produtos e Limites do seu jeito,',
                        style: TextStyle(
                          color: Colors.deepPurple,
                        ),
                      ),
                      TextSpan(
                        text: '\ntraga seus dados.',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              height: 75,
              width: 260,
              decoration: BoxDecoration(
                color: colorSub,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: 'Convide seus amigos para o Nubank',
                        style: TextStyle(
                          color: Colors.deepPurple,
                        ),
                      ),
                      TextSpan(
                        text: '\ne desbloqueie brasões incríveis.',
                        style: TextStyle(
                          color: Colors.black,
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
    );
  }

  Widget _credCardsScetion() {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: GestureDetector(
        onTap: () => debugPrint('Cliquei Área Cartão de Crédito'),
        child: Container(
          color: Colors.transparent,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: const [
                  Text(
                    'Cartão de crédito',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(top: 8, right: 10),
                    child: FaIcon(
                      FontAwesomeIcons.chevronRight,
                      size: 14,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const Text('Fatura atual'),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: Text(
                  controller.isHidden
                      ? '****'
                      : 'R\$ ${user.invoiceAmount.toStringAsFixed(2).replaceAll('.', ',')}',
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Text(
                'Limite disponível de R\$ ${controller.isHidden ? '****' : user.creditLimit.toStringAsFixed(2).replaceAll('.', ',')}',
              ),
              const SizedBox(
                height: 15,
              ),
              ElevatedButton(
                onPressed: () {
                  debugPrint('Parcelar Compras');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: colorSub,
                  fixedSize: const Size(160, 40),
                  shape: const StadiumBorder(),
                ),
                child: const Text(
                  'Parcelar compras',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _followToo() {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: SizedBox(
        height: 100,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Acompanhe também',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
                onPressed: () {
                  debugPrint('Cliquei Assistente de Pagamentos');
                },
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(
                    MediaQuery.of(context).size.width,
                    60,
                  ),
                  backgroundColor: colorSub,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Row(
                  children: [
                    const FaIcon(
                      FontAwesomeIcons.clockRotateLeft,
                      color: Colors.black,
                      size: 18,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const Text(
                      'Assistente de\npagamentos',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                    const Spacer(),
                    Container(
                      height: 20,
                      width: 40,
                      color: Colors.deepPurple,
                      child: const Center(
                        child: Text(
                          'Novo',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }

  Widget _loanSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
      child: Container(
        height: 70,
        color: Colors.transparent,
        child: GestureDetector(
          onTap: () => debugPrint('Cliquei Área Empréstimo'),
          child: Container(
            color: Colors.transparent,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: const [
                    Text(
                      'Emprestimo',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.only(top: 8, right: 10),
                      child: FaIcon(
                        FontAwesomeIcons.chevronRight,
                        size: 14,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const Text('Valor disponível de até'),
                const SizedBox(height: 5),
                Text(controller.isHidden
                    ? '****'
                    : 'R\$ ${user.loanLimit.toStringAsFixed(2).replaceAll('.', ',')}'),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _findMoreSection() {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: SizedBox(
        height: 300,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Descubra mais',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 15, right: 10),
                    child: GestureDetector(
                      onTap: () => debugPrint(
                          'Cliquei Card Descubra Mais N${index + 1}'),
                      child: Container(
                        height: 225,
                        width: 195,
                        decoration: BoxDecoration(
                          color: colorSub,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Container(
                          color: Colors.transparent,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 100,
                                decoration: BoxDecoration(
                                    color: colorSub,
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20),
                                    ),
                                    image: const DecorationImage(
                                      image: AssetImage(
                                        'assets/imgs/fotocontainer.jpg',
                                      ),
                                      fit: BoxFit.fill,
                                    )),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 10, left: 10),
                                child: Text(
                                  'Nubank Celular Seguro',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(
                                    top: 10, left: 10, bottom: 25),
                                child: Text(
                                  '100% cobertura, 0% estresse.\nSimule agora mesmo.',
                                  style: TextStyle(
                                    fontSize: 12.5,
                                    color: Color(0xff70737b),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: OutlinedButton.styleFrom(
                                      shape: const StadiumBorder(),
                                      backgroundColor: Colors.deepPurple),
                                  child: const Text('Conhecer'),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
