import 'package:flutter/material.dart';

import 'app_button.dart';
import 'app_textfield.dart';

class LoginForm extends StatefulWidget {
  final VoidCallback onLogin;

  const LoginForm({
    super.key,
    required this.onLogin,
  });

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final TextEditingController txtUser = TextEditingController();
  final TextEditingController txtPassword = TextEditingController();

  bool rememberMe = false;
  bool hidePassword = true;

  @override
  void dispose() {
    txtUser.dispose();
    txtPassword.dispose();
    super.dispose();
  }

  void login() {
    if (txtUser.text.trim().isEmpty) {
      showMessage("Please enter username");
      return;
    }

    if (txtPassword.text.trim().isEmpty) {
      showMessage("Please enter password");
      return;
    }

    if (txtUser.text == "admin" &&
        txtPassword.text == "1234") {
      widget.onLogin();
    } else {
      showMessage("Invalid username or password");
    }
  }

  void showMessage(String msg) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(msg)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        AppTextField(
          controller: txtUser,
          label: "Username",
          icon: Icons.person,
        ),

        const SizedBox(height: 20),

        TextField(
          controller: txtPassword,
          obscureText: hidePassword,

          decoration: InputDecoration(

            labelText: "Password",

            prefixIcon: const Icon(Icons.lock),

            suffixIcon: IconButton(

              icon: Icon(

                hidePassword
                    ? Icons.visibility
                    : Icons.visibility_off,

              ),

              onPressed: () {

                setState(() {

                  hidePassword = !hidePassword;

                });

              },

            ),

            border: OutlineInputBorder(

              borderRadius:
                  BorderRadius.circular(12),

            ),

          ),

        ),

        const SizedBox(height: 15),

        Row(

          children: [

            Checkbox(

              value: rememberMe,

              onChanged: (value) {

                setState(() {

                  rememberMe = value!;

                });

              },

            ),

            const Text("Remember Me"),

          ],

        ),

        const SizedBox(height: 20),

        AppButton(

          text: "LOGIN",

          onPressed: login,

        ),

        const SizedBox(height: 10),

        TextButton(

          onPressed: () {},

          child: const Text(
            "Forgot Password ?",
          ),

        ),

      ],
    );
  }
}