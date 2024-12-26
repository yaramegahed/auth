import 'package:flutter/material.dart';
import 'package:nti2/src/core/style/Size.dart';
import 'package:nti2/src/core/style/colors.dart';
import 'package:nti2/src/core/widget/appBar.dart';
import 'package:nti2/src/core/widget/button.dart';

import '../../../core/model/auth_model.dart';
import '../../../core/widget/custom_text_field.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final formKey = GlobalKey<FormState>();

  DataModel data = DataModel();

  String? result;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: appBar(
            title: "جاري حساب الكتلة",
            color: AppColor.white,
            fontSize: SizeApp.s25),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              SizedBox(
                height: 200,
                child: ListView.builder(
                    itemCount: list2.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: CustomTextField(
                          authModel: AuthModel(
                              onSaved: (e) {
                                if (index == 0) {
                                  data.weight = e;
                                } else {
                                  data.height = e;
                                }
                              },
                              keyboard: list2[index].keyboard,
                              prefixIcon: list2[index].prefixIcon,
                              hint: list2[index].hint,
                              lable: list2[index].lable,
                              controller: list2[index].controller,
                              validator: (s) {
                                if (s!.isEmpty) {
                                  return "this field is required";
                                }
                                return null;
                              },
                              // validator: list2[index].validator,
                              obscure: list[index].obscure),
                        ),
                      );
                    }),
              ),
              Button(
                  text: "احسب الوزن",
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      print(data.weight);
                      print(data.height);
                      result = evaluate(data);
                      setState(() {});
                    }
                  }),
              const SizedBox(height: 64),
              Text(result ?? "",
                  style: const TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.w900,
                      fontSize: 28))
            ],
          ),
        ),
      ),
    );
  }

  String evaluate(DataModel data) {
    double weight = double.parse(data.weight!);
    double height = double.parse(data.height!) / 100;
    double bmi = weight / (height * height);

    if (bmi < 18.5) {
      return "Underweight";
    } else if (bmi >= 18.5 && bmi < 24.9) {
      return "Normal weight";
    } else if (bmi >= 25 && bmi < 29.9) {
      return "Overweight";
    } else {
      return "Obesity";
    }
  }
}

class MyController {
  static TextEditingController name = TextEditingController();
}

class DataModel {
  String? weight, height;
  DataModel({this.height, this.weight});
}
