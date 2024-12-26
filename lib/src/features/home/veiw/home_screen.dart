import 'package:flutter/material.dart';
import 'package:nti2/src/core/style/Size.dart';
import 'package:nti2/src/core/style/colors.dart';
import 'package:nti2/src/core/widget/appBar.dart';
import 'package:nti2/src/core/widget/button.dart';

import '../../../core/model/auth_model.dart';
import '../../../core/widget/custom_text_field.dart';

class HomeScreen extends StatelessWidget {
   const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                            keyboard: list2[index].keyboard,
                            prefixIcon: list2[index].prefixIcon,
                            hint: list2[index].hint,
                            lable: list2[index].lable,
                            controller: list2[index].controller,
                            validator: list2[index].validator,
                            obscure: list[index].obscure),
                      ),
                    );
                  }),
            ),
            Button(text: "احسب الوزن", onPressed: () {})
          ],
        ),
      ),
    );
  }
}
class MyController{
  static TextEditingController name=TextEditingController();

}