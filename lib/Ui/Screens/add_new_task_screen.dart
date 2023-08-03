import 'package:driver_apps/Ui/Screens/login_screens.dart';
import 'package:driver_apps/Ui/Screens/new_task_screen.dart';
import 'package:driver_apps/Ui/Widget/user_profile_banner.dart';
import 'package:flutter/material.dart';

class AddNewTaskScreen extends StatelessWidget {
  const AddNewTaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(
        child: SafeArea(
          child: Column(

            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              UserProfileBanner(),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    SizedBox(height: 16,),
                    Text(
                      "Create A New Task..",
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    SizedBox(height: 16,),
                    TextFormField(decoration: InputDecoration(
                      hintText: 'Title',
                    ),),
                    SizedBox(height: 16,),
                    TextFormField(
                      maxLines: 4,
                      decoration: InputDecoration(
                      hintText: 'Description'
                    ),
                    ),

                    const SizedBox(
                      height: 18,
                    ),

                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(onPressed: (){
                            Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>NewTaskScreen()), (route) => false);
                      },
                        child: Text("TASK ADD", style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w400

                        ),),

                      ),
                    ),
                  ],
                ),
              ),



            ],
          ),
        ),
      ),
    );
  }
}
