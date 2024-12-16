import 'package:flutter/material.dart';
import 'package:sanad_app/core/services/flutter_local_notification_service.dart';
import 'package:sanad_app/core/themes/app_colors.dart';
import 'package:sanad_app/features/tasks/presentation/views/add_reminder_view.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 90),
      child: FloatingActionButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        onPressed: () async {
          // Navigator.pushNamed(context, AddReminderView.route);
          await FlutterLocalNotificationService.showBasicNotification();
        },
        backgroundColor: AppColors.kPrimaryColor,
        child: const Icon(
          Icons.add,
          size: 40,
          color: AppColors.kLigthBG,
        ),
      ),
    );
  }
}
