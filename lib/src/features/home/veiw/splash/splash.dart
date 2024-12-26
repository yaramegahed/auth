import 'package:flutter/material.dart';
import 'package:nti2/src/core/style/Size.dart';
import 'package:nti2/src/core/style/colors.dart';
import 'package:nti2/src/features/home/veiw/auth/login_screen.dart';
import 'package:nti2/src/features/home/veiw/auth/register.dart';
import 'package:nti2/src/features/home/veiw/navigator/main_details.dart';

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
      Duration(seconds: 5),
      () => Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LoginScreen())),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("",errorBuilder: (context, error, stackTrace) {
              return Icon(Icons.error,color: Colors.red,size: 40,);
            },),
            SizedBox(height: 20,),
            CircularProgressIndicator(
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
