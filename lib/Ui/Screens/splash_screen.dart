import 'package:driver_apps/Ui/Screens/login_screens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    navigateToLogin();
  }

  void navigateToLogin(){
    Future.delayed(const Duration(seconds: 3)).then((_){
      Navigator.pushAndRemoveUntil(
      context, MaterialPageRoute(builder: (context) => const LoginScreens()), (
          route) => false,
    );
    });


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: SvgPicture.asset(
            'assets/images/background.svg',
            fit: BoxFit.fitHeight,
          ),
        ),
        Center(
          child: Image.asset(
            'assets/images/logo.png',
            height: 300,
            width: 220,

          ),

        )
      ],
    ));
  }
}
