import 'package:sanad_app/core/exports/exports.dart';

class TaskModel {
  final String title;
  final String? description;
  final DateTime date;
  final TimeOfDay time;
  final int id;

  TaskModel({
    required this.title,
    required this.description,
    required this.date,
    required this.time,
    required this.id,
  });
}
