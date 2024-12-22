import 'package:flutter/material.dart';
import 'package:nti2/src/core/style/colors.dart';

AppBar appBar(
{required title,required color,required fontSize}
    ) {
  return AppBar(
    toolbarHeight: 80,
    backgroundColor: AppColor.blueGrey,
    centerTitle: true,
    title: Text(
      title,
      style: TextStyle(
          color: color,
          fontSize: fontSize,
          fontWeight: FontWeight.bold),
    ),
  );
}
class AppbarItem extends StatelessWidget implements PreferredSizeWidget {
  const AppbarItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.red,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

