import 'package:flutter/material.dart';
import 'package:mockup_nubank_flutter/app/views/home_view.dart';
import 'package:mockup_nubank_flutter/app/views/investiments_view.dart';
import 'package:page_transition/page_transition.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: const HomeView(),
      debugShowCheckedModeBanner: false,
    );
  }
}
