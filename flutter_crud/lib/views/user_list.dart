import 'package:flutter/material.dart';
import 'package:flutter_crud/models/user.dart';
import 'package:flutter_crud/provider/users.dart';
import 'package:flutter_crud/widgets/user_tile.dart';
import 'package:provider/provider.dart';

class UserList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final UsersProvider users = Provider.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de usuários'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.add),onPressed: (){})
        ],
      ),
      body: ListView.builder(
        itemCount: users.count,
        itemBuilder: (context, index) => UserTile(users.byIndex(index)),
      ),
    );
  }
}
