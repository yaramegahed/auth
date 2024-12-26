import 'package:flutter/material.dart';
import 'package:nti2/src/core/style/colors.dart';

class AuthModel {
  final Widget lable;
  final String hint;
  final Widget prefixIcon;
  final TextInputType keyboard;
  final bool obscure;
  final TextEditingController controller;
  final TextEditingController weight = TextEditingController();
  final TextEditingController height = TextEditingController();
  final TextEditingController name=TextEditingController();
  final TextEditingController date=TextEditingController();
  final String? Function(String?)? validator;
  final void Function(String?)? onSaved;

  AuthModel(
      {required this.obscure,
      this.validator,
      this.onSaved,
      required this.controller,
      required this.keyboard,
      required this.prefixIcon,
      required this.hint,
      required this.lable});
}

List<AuthModel> list = [
  AuthModel(
    prefixIcon: const Icon(Icons.perm_identity),
    hint: "user name",
    lable: const Text("user name"),
    keyboard: TextInputType.name,
    controller: TextEditingController(),
    validator: (value) {
      if (value!.isEmpty) {
        return "user name should have 3 character at least";
      }
      return null;
    },
    obscure: false,
  ),
  AuthModel(
    prefixIcon: const Icon(
      Icons.perm_identity,
      color: AppColor.brown,
    ),
    hint: "enter your user name",
    lable: const Text("Id"),
    keyboard: TextInputType.number,
    controller: TextEditingController(),
    obscure: false,
    validator: (value) {
      if (value!.isEmpty) {
        return "should be 14 numbers";
      } else if (value.length < 14) {
        return " ID must be at least 14 digits";
      }
      return null;
    },
  ),
  AuthModel(
    prefixIcon: const Icon(
      Icons.numbers,
      color: AppColor.brown,
    ),
    hint: "enter your phone number",
    lable: const Text("phone number"),
    keyboard: TextInputType.number,
    obscure: false,
    validator: (value) {
      if (value!.isEmpty) {
        return "enter 11 number";
      } else if (value.length < 11) {
        return " phone number must be at least 11 digits";
      }
      return null;
    },
    controller: TextEditingController(),
  ),
  AuthModel(
    prefixIcon: const Icon(
      Icons.email,
      color: AppColor.brown,
    ),
    hint: "enter your email",
    lable: const Text("email"),
    keyboard: TextInputType.emailAddress,
    obscure: false,
    validator: (value) {
      if (value!.isEmpty) {
        return "enter valid email";
      } else if (!value.contains("@") || !value.contains(".com")) {
        return " @example.com";
      }
      return null;
    },
    controller: TextEditingController(),
  ),
  AuthModel(
    prefixIcon: const Icon(
      Icons.password,
      color: AppColor.brown,
    ),
    hint: "enter your password",
    lable: const Text("password"),
    keyboard: TextInputType.number,
    obscure: true,
    controller: TextEditingController(),
    validator: (value) {
      if (value!.isEmpty) {
        return "enter 8 characterd at least";
      } else if (value.length < 8) {
        return " password must be at least 8 digits";
      }
      return null;
    },
  ),
];
List<AuthModel> list1 = [
  AuthModel(
    prefixIcon: const Icon(
      Icons.email,
      color: AppColor.brown,
    ),
    hint: "enter your email",
    lable: const Text("email"),
    keyboard: TextInputType.emailAddress,
    obscure: false,
    validator: (value) {
      if (value!.isEmpty) {
        return "enter valid email";
      } else if (!value.contains("@") || !value.contains(".com")) {
        return " @example.com";
      }
      return null;
    },
    controller: TextEditingController(),
  ),
  AuthModel(
    prefixIcon: const Icon(
      Icons.password,
      color: AppColor.brown,
    ),
    hint: "enter your password",
    lable: const Text("password"),
    keyboard: TextInputType.number,
    obscure: true,
    controller: TextEditingController(),
    validator: (value) {
      if (value!.isEmpty) {
        return "enter 8 characterd at least";
      } else if (value.length < 8) {
        return " password must be at least 8 digits";
      }
      return null;
    },
  ),
];
List<AuthModel> list2 = [
  AuthModel(

    prefixIcon: const Icon(
      Icons.widgets,
      color: AppColor.brown,
    ),
    hint: "برجاء ادخال الوزن",
    lable: const Text("الوزن"),
    keyboard: TextInputType.number,
    obscure: false,
    validator: (value) {
      if (value!.isEmpty) {
        return "برجاء ادخل رقم";
      }
      return null;
    },
    controller: TextEditingController(),
  ),
  AuthModel(
    prefixIcon: const Icon(
      Icons.h_mobiledata,
      color: AppColor.brown,
    ),
    hint: "برجاء ادخال الطول",
    lable: const Text("الطول"),
    keyboard: TextInputType.number,
    obscure: true,
    controller: TextEditingController(),
    validator: (value) {
      if (value!.isEmpty) {
        return "برجاء ادخل رقم";
      }
      return null;
    },
  ),
];
List<AuthModel> mainList = [
  AuthModel(
    prefixIcon: const Icon(
      Icons.perm_identity,
      color: AppColor.brown,
    ),
    hint: "please enter your name",
    lable: const Text("name"),
    keyboard: TextInputType.name,
    obscure: false,
    validator: (value) {
      if (value!.isEmpty) {
        return "please enter your name";
      }else if(value.length<3){
        return"please enter at least 3 characters";
      }
      return null;
    },
    controller: TextEditingController(),
  ),
  AuthModel(
    prefixIcon: const Icon(
      Icons.calendar_month,
      color: AppColor.brown,
    ),
    hint: "please enter your birth date",
    lable: const Text("birth date"),
    keyboard: TextInputType.datetime,
    obscure: true,
    controller: TextEditingController(),
    validator: (value) {
      if (value!.isEmpty) {
        return "please enter your ID";
      } else if (value.length < 14) {
        return "please enter 14 numbers";
      }
      return null;
    }),
];
List<AuthModel> detailsList = [
  AuthModel(

    prefixIcon: const Icon(
      Icons.perm_identity,
      color: AppColor.brown,
    ),
    hint: "please enter your name",
    lable: const Text("name"),
    keyboard: TextInputType.name,
    obscure: false,
    validator: (value) {
      if (value!.isEmpty) {
        return "please enter your name";
      }else if(value.length<3){
        return"please enter at least 3 characters";
      }
      return null;
    },
    controller: TextEditingController(),
  ),
  AuthModel(
    prefixIcon: const Icon(
      Icons.calendar_month,
      color: AppColor.brown,
    ),
    hint: "please enter your age",
    lable: const Text("age"),
    keyboard: TextInputType.number,
    obscure: false,
    controller: TextEditingController(),
    validator: (value) {
      if (value!.isEmpty) {
        return "please enter your age";
      }
      return null;
    }),
];
