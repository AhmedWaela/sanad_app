import 'package:flutter/material.dart' hide TimePickerDialog;
import 'package:sanad_app/core/assets/app_assets.dart';
import 'package:sanad_app/core/widgets/custom_app_bar.dart';
import 'package:sanad_app/features/tasks/presentation/views/widgets/custom_reminder_text_feild.dart';
import 'package:sanad_app/features/tasks/presentation/views/widgets/custom_time_picker.dart';

class AddReminderView extends StatelessWidget {
  const AddReminderView({super.key});
  static const String route = '/addreminderview';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        title: 'Add Reminder',
      ),
      body: AddReminderViewBody(),
    );
  }
}

class AddReminderViewBody extends StatefulWidget {
  const AddReminderViewBody({super.key});

  @override
  State<AddReminderViewBody> createState() => _AddReminderViewBodyState();
}

class _AddReminderViewBodyState extends State<AddReminderViewBody> {
  TimeOfDay timeOfDay = TimeOfDay.now();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(
              height: 28,
            ),
            CustomReminderTextField(
              controller: TextEditingController(),
              suffixIcon: AppAssets.keyboardSvgPath,
              label: 'Title',
            ),
            CustomReminderTextField(
              controller: TextEditingController(),
              suffixIcon: AppAssets.keyboardSvgPath,
              label: 'Description (optional)',
            ),
            CustomReminderTextField(
              isReadOnly: true,
              controller: TextEditingController(),
              suffixIcon: AppAssets.calendarSvgPath,
              isClikableSuffix: true,
              bottomPadding: 0,
              hintText: 'mm/dd/yy',
              label: 'Enter Date',
            ),
            TimePickerDialog(
              initialTime: TimeOfDay.now(),
              onTimeSelected: (TimeOfDay time) {
                setState(() {
                  timeOfDay = time;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
