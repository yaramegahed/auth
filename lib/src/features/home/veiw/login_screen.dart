import 'package:flutter/material.dart';
import 'package:nti2/src/core/widget/appBar.dart';
import 'package:nti2/src/core/widget/button.dart';

import '../../../core/style/Size.dart';
import '../../../core/style/colors.dart';
import '../../../core/widget/custom_text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    password.dispose();
    email.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar:
          appBar(title: "Login", color: AppColor.white, fontSize: SizeApp.s25),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 20, top: 25),
                  child: CustomTextField(
                    prefix: Icons.email,
                    label: "email",
                    hint: "Enter your user name",
                    controller: email,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "enter your email";
                      } else if (!value.contains("@") ||
                          !value.contains(".com")) {
                        return " @example.com";
                      }
                    },
                    keyboard: TextInputType.emailAddress,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: CustomTextField(
                    prefix: Icons.lock,
                    label: "Password",
                    hint: "Enter your password",
                    controller: password,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "enter your password";
                      }
                      else if(value.length <8){
                        return " password must be at least 8 digits";
                      }
                    },
                    keyboard: TextInputType.name,
                    obsucre: true,
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
                Button(text: "login", onPressed: () {}),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Do not have an accout?"),
                    TextButton(onPressed: () { Navigator.pop(context);
                    }, child: Text("Sign up"))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
