import 'package:flutter/material.dart';
import 'package:nti2/src/core/style/Size.dart';
import 'package:nti2/src/core/style/colors.dart';
import 'package:nti2/src/core/widget/appBar.dart';
import 'package:nti2/src/core/widget/button.dart';
import 'package:nti2/src/core/widget/custom_text_field.dart';
import 'package:nti2/src/features/home/veiw/login_screen.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final TextEditingController name = TextEditingController();
  final TextEditingController id = TextEditingController();
  final TextEditingController phoneN = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    name.dispose();
    id.dispose();
    phoneN.dispose();
    email.dispose();
    password.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: appBar(
          title: "Sign Up", color: AppColor.white, fontSize: SizeApp.s25),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            physics: AlwaysScrollableScrollPhysics(),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome",
                  style: TextStyle(fontSize: SizeApp.s20),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20, top: 25),
                  child: CustomTextField(
                    prefix: Icons.person,
                    label: "User name",
                    hint: "Enter your user name",
                    controller: name,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "user name should have 3 character at least";
                      }
                      return null;
                    },
                    keyboard: TextInputType.name,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 20,
                  ),
                  child: CustomTextField(
                    prefix: Icons.person,
                    label: "ID",
                    hint: "Enter your ID",
                    controller: id,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "should be 14 numbers";
                      }
                      else if(value.length <14){
                        return " ID must be at least 14 digits";
                      }
                    },
                    keyboard: TextInputType.number,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 20,
                  ),
                  child: CustomTextField(
                    prefix: Icons.numbers,
                    label: "Phone number",
                    hint: "Enter your phone number",
                    controller: phoneN,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "enter 11 number";
                      }
                      else if(value.length <11){
                        return " phone number must be at least 11 digits";
                      }
                    },
                    keyboard: TextInputType.number,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 20,
                  ),
                  child: CustomTextField(
                    prefix: Icons.email,
                    label: "Email",
                    hint: "Enter your Email",
                    controller: email,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "enter valid email";
                      }
                      else if (!value.contains("@") ||
                          !value.contains(".com")) {
                        return " @example.com";
                      }
                    },
                    keyboard: TextInputType.emailAddress,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 20,
                  ),
                  child: CustomTextField(
                    prefix: Icons.password,
                    label: "Password",
                    hint: "Enter your password",
                    controller: password,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "enter 8 characterd at least";
                      }
                      else if(value.length <8){
                        return " password must be at least 8 digits";
                      }
                    },
                    keyboard: TextInputType.visiblePassword,
                    obsucre: true,
                  ),
                ),
                Center(
                    child: Padding(
                  padding: const EdgeInsets.only(top: 80),
                  child: Button(
                    text: "Sign Up",
                    onPressed: () {
                      formKey.currentState!.reset();
                      setState(() {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
            
                      });
                    },
                  ),
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
