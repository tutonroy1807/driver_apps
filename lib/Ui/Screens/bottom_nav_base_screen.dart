

import 'package:driver_apps/Ui/Screens/cancel_task_screen.dart';
import 'package:driver_apps/Ui/Screens/completed_task_screen.dart';
import 'package:driver_apps/Ui/Screens/in_progress_task_screen.dart';
import 'package:driver_apps/Ui/Screens/new_task_screen.dart';
import 'package:flutter/material.dart';

class BottomNavBaseScreen extends StatefulWidget {
  const BottomNavBaseScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavBaseScreen> createState() => _BottomNavBaseScreenState();
}

class _BottomNavBaseScreenState extends State<BottomNavBaseScreen> {
  int _selectedScreenIndex = 0;

  final List<Widget> _screens = const [
    NewTaskScreen(),
    InProgessTaskScreen(),
    CancelTaskScreen(),
    CompletedTaskScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedScreenIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedScreenIndex,
        unselectedItemColor: Colors.grey,
        unselectedLabelStyle: TextStyle(
          color: Colors.grey
        ),
        showUnselectedLabels: true,
        selectedItemColor: Colors.green,
        onTap: (int index){
          _selectedScreenIndex = index;
          if(mounted){
            setState(() {

            });
          }
      },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit),label: 'New'),
          BottomNavigationBarItem(icon: Icon(Icons.account_tree),label: 'In Progress'),
          BottomNavigationBarItem(icon: Icon(Icons.cancel_outlined),label: 'Cancel'),
          BottomNavigationBarItem(icon: Icon(Icons.done),label: 'Done')

        ],
      ),
    );
  }
}
