import 'package:flutter/material.dart';
import 'package:nti2/src/core/model/auth_model.dart';

import '../style/colors.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({super.key,required this.authModel});

  AuthModel authModel;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(fontWeight: FontWeight.bold),
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: authModel.validator,
      controller: authModel.controller,
      keyboardType: authModel.keyboard,
      textInputAction: TextInputAction.done,
      obscureText: authModel.obscure,
      decoration: InputDecoration(
          prefixIcon: Padding(
            padding: const EdgeInsets.all(5),
            child: authModel.prefixIcon,
          ),
          suffix: InkWell(
              onTap: () {
                authModel.controller.clear();
              },
              child: const Icon(Icons.highlight_remove)),
          label: authModel.lable,
          labelStyle: const TextStyle(color: AppColor.grey),
          hintText: authModel.hint,
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
