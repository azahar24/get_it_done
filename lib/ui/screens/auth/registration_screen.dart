
import 'package:GID/core/ui_constants.dart';
import 'package:GID/ui/widgets/app_button.dart';
import 'package:GID/ui/widgets/app_edit_text.dart';
import 'package:flutter/material.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        padding: padding24,
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Create a new\n Account",
              style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
            ),
            const AppEditText(hint: "Full Name"),

            const AppEditText(hint: "Email"),
            const AppEditText(hint: "Password", isObscure: true),
            AppButton(
                onTap: () {
                  debugPrint("Registration Now");
                },
                title: "Get In"),
            Center(
              child: TextButton(
                onPressed: () {
                  debugPrint("goto Login screen");
                },
                child: const Text("Already Have an Account? Sign In"),
              ),
            ),
            divider,
            const Center(child: Text("Or Sign in with")),
            AppButton(
                onTap: () {
                  debugPrint("google oauth");
                },
                title: "Google",
                whiteButtton: true),
          ],
        ),
      ),
    );
  }
}
