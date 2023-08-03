import 'package:driver_apps/Ui/Screens/bottom_nav_base_screen.dart';
import 'package:driver_apps/Ui/Screens/email_varification_screen.dart';
import 'package:driver_apps/Ui/Screens/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginScreens extends StatelessWidget {
  const LoginScreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ScreenBackground(
      child: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 120,),
                Text(
                  "GET STARTED WITH..",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(
                  height: 15,
                ),
                const TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: 'Email',
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                 TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: 'Password',


                  ),
                ),

                const SizedBox(
                  height: 12,
                ),

                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(onPressed: (){
                    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>BottomNavBaseScreen()), (route) => false);
                  },
                      child: Icon(Icons.arrow_forward_outlined),

                  ),
                ),

                SizedBox(height: 16,),

                Center(
                    child: InkWell(
                  onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => EmailVerificationScreen()));
                  },
                  child: Text(
                    "Forget Password",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account?", style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      letterSpacing: 0.6

                    ),),
                    TextButton(onPressed: () {
                      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => SingUpScreen()), (route) => false);
                    }, child: Text("SignUp")),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}

class ScreenBackground extends StatelessWidget {
  final Widget child;
  const ScreenBackground({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: SvgPicture.asset(
            'assets/images/background.svg',
            fit: BoxFit.fitHeight,
          ),
        ),
        child
      ],
    );
  }
}
