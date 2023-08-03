import 'package:driver_apps/Ui/Screens/login_screens.dart';
import 'package:driver_apps/Ui/Screens/otp_varification_screen.dart';
import 'package:flutter/material.dart';

class EmailVerificationScreen extends StatelessWidget {
  const EmailVerificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 84,),
                Text(
                  "Email Address",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 8,),
                Text(
                  "A 6 digit pin send to your email address.",
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(color: Colors.grey)

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

                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const OtpVerificationScreen()));
                  },
                    child: Icon(Icons.arrow_forward_outlined),

                  ),
                ),

                const SizedBox(height: 18,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(" have an account?", style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                        letterSpacing: 0.6

                    ),),
                    TextButton(onPressed: () {
                      Navigator.pop(context);
                    }, child: Text("Sign in")),
                  ],
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
