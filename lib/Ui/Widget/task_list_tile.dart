
import 'package:flutter/material.dart';

class TaskListTile extends StatelessWidget {
  const TaskListTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("Title will be here"),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Title is here"),
          Text("Date"),
          Row(
            children: [
              Chip(label: Text('New', style: TextStyle(fontSize: 20, color: Colors.purple),), backgroundColor: Colors.amber,),
              const Spacer(),
              IconButton(onPressed: (){}, icon: Icon(Icons.delete), color: Colors.redAccent,),
              IconButton(onPressed: (){}, icon: Icon(Icons.edit), color: Colors.green,)
            ],
          )
        ],
      ),
    );
  }
}