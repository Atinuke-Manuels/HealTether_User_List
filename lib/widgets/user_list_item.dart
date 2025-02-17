import 'package:flutter/material.dart';
import '../models/user_model.dart';

class UserListItem extends StatelessWidget {
  final User user;

  const UserListItem({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(
        backgroundImage: AssetImage('assets/profile_img.jpg'),
      ),
      title: Text(user.name),
      subtitle: Text(user.email),
    );
  }
}