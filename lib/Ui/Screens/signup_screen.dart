import 'package:driver_apps/Ui/Screens/driver_sign_up_page.dart';
import 'package:driver_apps/Ui/Screens/email_varification_screen.dart';
import 'package:driver_apps/Ui/Screens/login_screens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SingUpScreen extends StatelessWidget {
  const SingUpScreen({Key? key}) : super(key: key);

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
                      "GET STARTED WITH US..",
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
                    const TextField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        hintText: 'First Name',
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    const TextField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        hintText: 'Last Name',
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'New Password',


                      ),
                    ),

                    const SizedBox(
                      height: 12,
                    ),

                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Confirm Password',


                      ),
                    ),

                    const SizedBox(
                      height: 12,
                    ),

                    TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: 'Phone Number',


                      ),
                    ),

                    SizedBox(height: 12,),



                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(onPressed: (){
                        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => LoginScreens()), (route) => false);
                      },
                        child: Text("Submit",style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w500
                        ),),

                      ),
                    ),

                    SizedBox(height: 16,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                          Text("Have an Account?", style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                              letterSpacing: 0.6

                          ),),

                          TextButton(onPressed: () {
                                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>LoginScreens()), (route) => false);
                          }, child: const Text('Sign in')),
                        ],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("are you driver?", style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                            letterSpacing: 0.6

                        ),),

                        TextButton(onPressed: () {
                            Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=> DriverSignUpPage()), (route) => false);
                        }, child: const Text('Sign Up')),
                      ],
                    )

                ]

                ),
              )
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
