import 'package:flutter/material.dart';
import 'package:nti2/src/core/style/colors.dart';
import 'package:nti2/src/features/home/veiw/auth/login_screen.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(
      const Duration(seconds: 5),
      () => Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const LoginScreen())),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("",errorBuilder: (context, error, stackTrace) {
              return const Icon(Icons.error,color: Colors.red,size: 40,);
            },),
            const SizedBox(height: 20,),
            const CircularProgressIndicator(
              strokeWidth: 12,
              color: Colors.blueGrey,
              backgroundColor: AppColor.brown,
            )
          ],
        ),
      ),
    );
  }
}
