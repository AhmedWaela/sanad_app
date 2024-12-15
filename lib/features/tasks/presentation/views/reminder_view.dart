import 'package:flutter/material.dart';
import 'package:sanad_app/features/tasks/presentation/views/widgets/reminder_view_body.dart';

class ReminderView extends StatelessWidget {
  const ReminderView({super.key});
  static const String route = '/reminderview';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ReminderViewBody(),
    );
  }
}
