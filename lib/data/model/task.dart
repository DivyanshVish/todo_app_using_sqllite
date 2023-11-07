import 'package:equatable/equatable.dart';
import 'package:todo_app_using_sqllite/utils/task_category.dart';

class Task extends Equatable {
  final int? id;
  final String title;
  final String note;
  final String time;
  final String date;
  final TaskCategory category;

  final bool isCompleted;

  const Task({
    this.id,
    required this.title,
    required this.date,
    required this.time,
    required this.note,
    required this.category,
    required this.isCompleted,
  });

  @override
  List<Object> get props {
    return [
      id!,
      title,
      date,
      time,
      note,
      isCompleted,
    ];
  }
}
