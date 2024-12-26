import 'package:flutter/material.dart';
import 'package:nti2/src/core/model/auth_model.dart';
import 'package:nti2/src/core/style/Size.dart';
import 'package:nti2/src/core/style/colors.dart';
import 'package:nti2/src/core/widget/appBar.dart';
import 'package:nti2/src/core/widget/button.dart';
import 'package:nti2/src/core/widget/custom_text_field.dart';
import 'package:nti2/src/features/home/veiw/navigator/details.dart';

class MainDetails extends StatefulWidget {

   const MainDetails({super.key});

  @override
  State<MainDetails> createState() => _MainDetailsState();
}

class _MainDetailsState extends State<MainDetails> {
  final GlobalKey<FormState> formKey=GlobalKey();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          appBar(title: "Main", color: AppColor.white, fontSize: SizeApp.s25),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              SizedBox(height: 200,
                child: ListView.builder(itemCount: 2,
                  itemBuilder:  (context, index) {
                  return

                   Padding(
                     padding: const EdgeInsets.only(bottom: 15),
                     child: CustomTextField(
                        authModel: AuthModel(
                            obscure: mainList[index].obscure,
                            controller: mainList[index].controller,
                            keyboard: mainList[index].keyboard,
                            prefixIcon: mainList[index].prefixIcon,
                            hint: mainList[index].hint,
                            lable: mainList[index].lable,validator: mainList[index].validator)),
                   );
                },
                ),
              ),
              Button(text: "show details", onPressed: (){}),
              const SizedBox(height: 20,),
              Button(text: "navigate", onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const Details()));
              }),
            ],
          ),
        ),
      ),
    );
  }
}
