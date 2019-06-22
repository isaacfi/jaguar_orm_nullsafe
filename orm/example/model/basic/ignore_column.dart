import 'dart:async';
import 'package:jaguar_orm/jaguar_orm.dart';

part 'ignore_column.jorm.dart';

class User {
  @primaryKey
  @auto
  int id;

  String name;

  int age;

  User({this.id, this.name, this.age});

  bool operator ==(final other) {
    if (other is User)
      return id == other.id && name == other.name && age == other.age;
    return false;
  }

  String toString() => "User($id, $name)";

  int get hashCode => 1;
  int get whatever => 1;

  @ignoreColumn
  int ignoreThis;

  @ignoreColumn // TODO
  String ignoreThisToo;
}

/// Bean logic is generated by Jaguar ORM
@GenBean(
/* TODO
columns: const {
  'ignoreThisToo': const IgnoreColumn(),
}*/
)
class UserBean extends Bean<User> with _UserBean {
  UserBean(Adapter adapter) : super(adapter);

  String get tableName => 'simple_user';
}
