import 'package:flutter_modular/flutter_modular.dart';
import 'package:mockup_nubank_flutter/app/views/investiments_view.dart';
import 'package:mockup_nubank_flutter/app/views/navigation_view.dart';
import 'package:mockup_nubank_flutter/app/views/home_view.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/',
            child: (context, args) => const NavigationView(),
            children: [
              ChildRoute(
                '/home',
                child: (context, args) => const HomeView(),
              ),
              ChildRoute('/investiment',
                  child: (context, args) => const InvestmentsView()),
            ])
      ];
}
