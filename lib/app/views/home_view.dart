import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mockup_nubank_flutter/app/components/operations_widget.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  IconData iconVision = FontAwesomeIcons.solidEye;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(120),
        child: _appBar(),
      ),
      body: ListView(
        children: [
          _accountSection(),
          _bankingOperationsSection(),
          _userCards(),
        ],
      ),
    );
  }

  Widget _appBar() {
    return Column(
      children: [
        AppBar(
          toolbarHeight: 70,
          leading: Padding(
            padding: const EdgeInsets.only(left: 15),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.add_photo_alternate_outlined,
              ),
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {
                setState(() {
                  if (iconVision == FontAwesomeIcons.eyeSlash) {
                    iconVision = FontAwesomeIcons.solidEye;
                  } else {
                    iconVision = FontAwesomeIcons.eyeSlash;
                  }
                });
              },
              icon: FaIcon(
                iconVision,
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
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: IconButton(
                onPressed: () {},
                icon: const FaIcon(
                  FontAwesomeIcons.userPlus,
                  color: Colors.white,
                  size: 15,
                ),
              ),
            ),
          ],
        ),
        Container(
          color: Colors.deepPurple,
          height: 50,
          child: const Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.0, bottom: 10),
              child: Text(
                'Olá, Lucas',
                style: TextStyle(
                  color: Color(0xffffffff),
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ),
      ],
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
                  Expanded(child: SizedBox.shrink()),
                  Padding(
                    padding: EdgeInsets.only(top: 8, right: 10),
                    child: FaIcon(
                      FontAwesomeIcons.chevronRight,
                      size: 14,
                    ),
                  ),
                ],
              ),
              const Expanded(child: SizedBox.shrink()),
              const Text(
                'R\$ 2000.00',
                style: TextStyle(
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
      height: 140,
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
          // ignore: avoid_print
          print('Meus Cartões');
        },
        child: ElevatedButton(
          onPressed: () {
            // ignore: avoid_print
            print('Cliquei Meus Cartões');
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 235, 235, 235),
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
}
