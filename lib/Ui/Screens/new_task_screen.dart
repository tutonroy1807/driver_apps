import 'package:driver_apps/Ui/Screens/add_new_task_screen.dart';
import 'package:flutter/material.dart';

import '../Widget/summary_card.dart';
import '../Widget/task_list_tile.dart';
import '../Widget/user_profile_banner.dart';

class NewTaskScreen extends StatelessWidget {
  const NewTaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const UserProfileBanner(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: SummaryCard(
                      number: 123,
                      title: 'New Task',
                    ),
                  ),
                  Expanded(
                    child: SummaryCard(
                      number: 123,
                      title: 'Progress',
                    ),
                  ),
                  Expanded(
                    child: SummaryCard(
                      number: 123,
                      title: 'Cancelled',
                    ),
                  ),
                  Expanded(
                    child: SummaryCard(
                      number: 123,
                      title: 'Completed',
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.separated(
                itemCount: 20,
                itemBuilder: (context, index) {
                  return TaskListTile();
                },
                separatorBuilder: (BuildContext context, int index) {
                  return const Divider(
                    height: 4,
                  );
                },
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => const AddNewTaskScreen()),
              (route) => false);
        },
      ),
    );
  }
}
