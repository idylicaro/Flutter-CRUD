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

}