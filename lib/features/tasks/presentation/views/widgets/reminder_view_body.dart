import 'package:flutter/material.dart';
import 'package:sanad_app/features/tasks/presentation/views/widgets/task_widget.dart';

class ReminderViewBody extends StatelessWidget {
  const ReminderViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 8,
      itemBuilder: (context, index) {
        return const TaskWidget();
      },
    );
  }
}
