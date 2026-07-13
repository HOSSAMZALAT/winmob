import 'package:flutter/material.dart';
import 'screens/login_screen.dart';

void main() {
  runApp(const WinMobCRM());
}

class WinMobCRM extends StatelessWidget {
  const WinMobCRM({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WinMob CRM',
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.indigo,
      ),

      home: const LoginScreen(),
    );
  }
}