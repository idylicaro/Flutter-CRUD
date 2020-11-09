import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter_crud/data/dummy_users.dart';
import 'package:flutter_crud/models/user.dart';


//observer
class UsersProvider with ChangeNotifier{
  Map<String, User> _items = {...DUMMY_USERS};

  List<User> get all{
    return [..._items.values];
  }

  int get count{
    return _items.length;
  }

  User byIndex(int id) {
    return _items.values.elementAt(id);
  }

  void put(User user){
    if (user == null){
      return;
    }

    if(user.id != null && user.id.trim().isNotEmpty && _items.containsKey(user.id)){ // Update
      _items.update(user.id, (_) => User(
          id: user.id,
          name: user.name,
          email: user.email,
          avatarUrl: user.avatarUrl
      ));
    }else{ // ADD
      final id = Random().nextDouble().toString();
      _items.putIfAbsent(id, () => User(
          id: id,
          name: user.name,
          email: user.email,
          avatarUrl: user.avatarUrl
      ));
    }
    notifyListeners();
  }

  void remove(User user){
    if(user.id != null){
      _items.remove(user.id);
      notifyListeners();
    }
  }
}