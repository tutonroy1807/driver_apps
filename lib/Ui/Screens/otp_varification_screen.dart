import 'package:driver_apps/Ui/Screens/login_screens.dart';
import 'package:driver_apps/Ui/Screens/setpassword_screen.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpVerificationScreen extends StatelessWidget {
  const OtpVerificationScreen({Key? key}) : super(key: key);

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
                  "Pin Verification",
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

                const SizedBox(
                  height: 12,
                ),

                PinCodeTextField(
                  length: 6,
                  obscureText: false,
                  animationType: AnimationType.fade,
                  keyboardType: TextInputType.number,
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(5),
                    fieldHeight: 50,
                    fieldWidth: 40,
                    activeFillColor: Colors.white,
                    inactiveFillColor: Colors.white,
                    inactiveColor: Colors.white
                  ),
                  animationDuration: const Duration(microseconds: 300),
                  backgroundColor: Colors.white,
                  enableActiveFill: true,
                  cursorColor: Colors.green,
                  enablePinAutofill: true,
                  onCompleted: (v){

                  },
                  onChanged: (value){

                  },
                  beforeTextPaste: (text){
                    print("Allowing to past $text");
                    return true;
                  },appContext: context,

                ),

                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(onPressed: (){
                    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>SetPasswordScreen()), (route) => false);
                  },
                    child: const Text("Verify", style: TextStyle(
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
