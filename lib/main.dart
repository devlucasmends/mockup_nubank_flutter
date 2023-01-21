import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mockup_nubank_flutter/app/modules/app_module.dart';
import 'package:mockup_nubank_flutter/app/my_app.dart';

void main() {
  runApp(ModularApp(module: AppModule(), child: const MyApp()));
}
