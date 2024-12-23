// import 'package:flutter/material.dart';
// import 'package:nti2/src/core/style/colors.dart';
// import 'package:nti2/src/core/widget/appBar.dart';
// import 'package:nti2/src/core/widget/custom_text_field.dart';
//
// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});
//
//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }
//
// class _HomeScreenState extends State<HomeScreen> {
//   final TextEditingController height = TextEditingController();
//   final TextEditingController width = TextEditingController();
//   GlobalKey<FormState> formkey = GlobalKey();
//
//   _HomeScreenState();
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     height.addListener(() {
//       setState(() {});
//     });
//   }
//
//   @override
//   void dispose() {
//     // TODO: implement dispose
//     super.dispose();
//     height.dispose();
//     width.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar:
//           appBar(title: "جاري الحساب", color: AppColor.blueGrey, fontSize: 20),
//       body: Form(
//         key: formkey,
//         child: Column(children: [
//           Padding(
//               padding: const EdgeInsets.all(15),
//               child: CustomTextField(
//                 prefix: Icons.h_mobiledata,
//                 label: "الطول",
//                 hint: "برجاء ادخال الطول",
//                 controller: height,
//                 validator: (value) {
//                   if (value!.isEmpty) {
//                     return "برجاء ادخال بيانات";
//                   }
//                   return null;
//                 },
//                 keyboard: TextInputType.number,
//               )),
//           Padding(
//               padding: const EdgeInsets.only(left: 15, right: 15),
//               child: CustomTextField(
//                 prefix: Icons.widgets,
//                 label: "الوزن",
//                 hint: "برجاء ادخال الوزن",
//                 controller: width,
//                 keyboard: TextInputType.number,
//               )),
//           MenuItemButton(
//             child: const Icon(Icons.add),
//             onPressed: () {
//               if (formkey.currentState!.validate()) {}
//             },
//           ),
//           Text(height.text)
//         ]),
//       ),
//     );
//   }
// }
