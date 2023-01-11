import 'package:flutter/material.dart';
import 'package:mockup_nubank_flutter/app/views/home_view.dart';
import 'package:mockup_nubank_flutter/app/views/investiments_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeView(),
        '/investments': (context) => const InvestmentsView(),
      },
      // home: const InvestmentsView(),
      debugShowCheckedModeBanner: false,
    );
  }
}
