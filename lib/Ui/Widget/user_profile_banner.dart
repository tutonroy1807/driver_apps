import 'package:flutter/material.dart';

class UserProfileBanner extends StatelessWidget {
  const UserProfileBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 16),
      tileColor: Colors.white,
      leading: CircleAvatar(
        backgroundImage:
        NetworkImage('https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=880&q=80'),
        radius: 15,
      ),
      title: Text("User Name", style: TextStyle(fontSize: 14, color: Colors.blue, fontWeight: FontWeight.w500),),
      subtitle: Text("User Email", style: TextStyle(fontSize: 14, color: Colors.blue, fontWeight: FontWeight.w500)),
    );
  }
}