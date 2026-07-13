import 'package:flutter/material.dart';

import '../widgets/login_form.dart';
import 'dashboard_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: Colors.grey.shade100,

      body: Center(

        child: SingleChildScrollView(

          child: Card(

            elevation: 12,

            margin: const EdgeInsets.all(20),

            shape: RoundedRectangleBorder(

              borderRadius:
                  BorderRadius.circular(20),

            ),

            child: Container(

              width: 420,

              padding: const EdgeInsets.all(25),

              child: Column(

                children: [

                  const Icon(
                    Icons.business,
                    size: 90,
                    color: Colors.indigo,
                  ),

                  const SizedBox(height: 15),

                  const Text(
                    "WinMob CRM",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 5),

                  const Text(
                    "Egypt Aware Technology",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                    ),
                  ),

                  const SizedBox(height: 30),

                  LoginForm(

                    onLogin: () {

                      Navigator.pushReplacement(

                        context,

                        MaterialPageRoute(

                          builder: (_) =>
                              const DashboardScreen(),

                        ),

                      );

                    },

                  ),

                  const SizedBox(height: 20),

                  const Text(
                    "Version 1.0",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),

                ],

              ),

            ),

          ),

        ),

      ),

    );

  }

}