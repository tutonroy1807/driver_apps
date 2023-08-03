import 'package:driver_apps/Ui/Screens/login_screens.dart';
import 'package:driver_apps/Ui/Screens/setpassword_screen.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class SetPasswordScreen extends StatelessWidget {
  const SetPasswordScreen({Key? key}) : super(key: key);

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
                const SizedBox(height: 100,),
                Text(
                  "SET PASSWORD",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 8,),
                Text(
                    "Minimum password should be 8 letters with numbers and symbol.",
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(color: Colors.grey)

                ),
                const SizedBox(
                  height: 15,
                ),

                const TextField(
                  obscureText: true,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: 'Password',
                  ),
                ),

                const SizedBox(
                  height: 12,
                ),

                const TextField(
                  obscureText: true,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: 'Confirm Password',
                  ),
                ),

                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(onPressed: (){
                    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => LoginScreens()), (route) => false);
                  },
                    child: const Text("Confirm", style: TextStyle(
                        fontSize: 20
                    ),),

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
                      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => LoginScreens()), (route) => false);
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
