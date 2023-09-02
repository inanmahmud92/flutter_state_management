import 'package:flutter_state_management/src/features/todo/data/entities/todo_entity.dart';
import 'package:flutter_state_management/src/features/user_profile/data/entity/user_entity.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class CategoryEntity {
  @Id()
  int id;

  String title;

  DateTime createdAt;

  DateTime updatedAt;

  @Backlink()
  final todos = ToMany<TodoEntity>();

  @Backlink()
  final user = ToOne<UserEntity>();

  CategoryEntity(
      {this.id = 0,
      required this.title,
      DateTime? createdAt,
      DateTime? updatedAt})
      : createdAt = createdAt ?? DateTime.now(),
        updatedAt = updatedAt ?? DateTime.now();
}
