import 'package:flutter/material.dart';
import 'package:nti2/src/features/home/veiw/login_screen.dart';
import 'package:nti2/src/features/home/veiw/register.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      home:  Register(),
    );
  }
}