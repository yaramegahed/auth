import 'package:flutter/material.dart';

import '../style/colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.prefix,
      required this.label,
      required this.hint, required this.controller, this.validator, required this.keyboard, this.obsucre=false});

  final IconData prefix;
  final String label;
  final String hint;
  final TextInputType keyboard;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final bool obsucre;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(fontWeight: FontWeight.bold),

      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: validator,
      controller: controller,
      keyboardType: keyboard,
      textInputAction: TextInputAction.done,
      obscureText: obsucre,
      decoration: InputDecoration(
          prefixIcon: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Icon(prefix,color: AppColor.brown,),
          ),
          suffix: InkWell(onTap: (){
            controller.clear();
          },
              child: const Icon(Icons.highlight_remove)),
          label: Text(label),
          labelStyle: const TextStyle(color: AppColor.grey),
          hintText: hint,
          border: border(color: AppColor.brown, radius: 20),
          // enabledBorder: border(color: AppColor.green, radius: 20),
          focusedBorder: border(color: AppColor.red, radius: 20)),
    );
  }

  InputBorder border({required color, required double radius}) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(radius),
        borderSide: BorderSide(color: color));
  }
}
