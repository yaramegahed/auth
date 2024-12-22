import 'package:flutter/material.dart';
import 'package:nti2/src/core/style/Size.dart';
import 'package:nti2/src/core/style/colors.dart';

class Button extends StatelessWidget {
  const Button({super.key, required this.text,required this.onPressed });
final String text;
final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: 380,
      height: 55,
      child: FilledButton(
        onPressed: onPressed,
        style: FilledButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
          backgroundColor: AppColor.brown,
        ),
        child: Text(text
          ,
          style: TextStyle(
            fontSize: SizeApp.s20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
