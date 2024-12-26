import 'package:flutter/material.dart';
import 'package:nti2/src/core/model/auth_model.dart';
import 'package:nti2/src/core/style/Size.dart';
import 'package:nti2/src/core/style/colors.dart';
import 'package:nti2/src/core/widget/appBar.dart';

import '../../../../core/widget/button.dart';
import '../../../../core/widget/custom_text_field.dart';

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(
          title: "details", color: AppColor.white, fontSize: SizeApp.s25),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            SizedBox(
              height: 200,
              child: ListView.builder(
                itemCount: 2,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: CustomTextField(
                        authModel: AuthModel(
                            obscure: detailsList[index].obscure,
                            controller: detailsList[index].controller,
                            keyboard: detailsList[index].keyboard,
                            prefixIcon: detailsList[index].prefixIcon,
                            hint: detailsList[index].hint,
                            lable: detailsList[index].lable,
                            validator: detailsList[index].validator)),
                  );
                },
              ),
            ),
            Button(text: "back", onPressed: () {
              Navigator.pop(context);
            }),
          ],
        ),
      ),
    );
  }
}
