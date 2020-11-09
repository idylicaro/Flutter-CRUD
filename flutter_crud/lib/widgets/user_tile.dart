import 'package:flutter/material.dart';
import 'package:flutter_crud/models/user.dart';

class UserTile extends StatelessWidget {
  final User user;
  const UserTile(this.user);
  @override
  Widget build(BuildContext context) {
    final avatar = user.avatarUrl == null || user.avatarUrl.isEmpty
      ? CircleAvatar(child: Icon(Icons.person))
        : CircleAvatar(backgroundImage: NetworkImage(user.avatarUrl));
    return ListTile(
      leading: avatar,
      title: Text(user.name),
      subtitle: Text(user.email),
      trailing: Container(
        width: 100,
        child: Row(
          children: [
            IconButton(icon: Icon(Icons.edit), onPressed: () {  },color: Colors.blueAccent),
            IconButton(icon: Icon(Icons.delete), onPressed: () {  },color: Colors.red)
          ],
        ),
      ),

    );
  }
}
