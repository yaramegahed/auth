import 'package:flutter/material.dart';
import 'package:nti2/src/features/home/veiw/home_screen.dart';
import 'package:nti2/src/features/home/veiw/auth/login_screen.dart';
import 'package:nti2/src/features/home/veiw/navigator/main_details.dart';
import 'package:nti2/src/features/home/veiw/auth/register.dart';
import 'package:nti2/src/features/home/veiw/splash/splash.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      home:  Splash(),
    );
  }
}