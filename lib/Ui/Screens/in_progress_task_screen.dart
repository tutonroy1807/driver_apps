import 'package:flutter/material.dart';

import '../Widget/task_list_tile.dart';
import '../Widget/user_profile_banner.dart';

class InProgessTaskScreen extends StatelessWidget {
  const InProgessTaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(

          children: [
            const UserProfileBanner(),
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
              ),

          ],
        ),
      ),
    );
  }
}
