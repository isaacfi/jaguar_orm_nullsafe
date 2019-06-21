part of 'create.dart';

class CreateCol<T> implements Property {
  final String name;

  final DataType<T> type;

  final bool nonNull;

  final bool isPrimary;

  final References foreign;

  final List<Constraint> constraints;

  CreateCol(this.name, this.type,
      {this.nonNull = false,
      this.isPrimary: false,
      this.foreign,
      this.constraints = const []});
}

class References {
  /// The table in which foreign key references the column [col]
  final String table;

  /// References column in table [table]
  final String col;

  const References(this.table, this.col);
}

abstract class Constraint {}

/// SQL UNIQUE constraint
class Unique {
  final String group;

  const Unique({this.group});
}
