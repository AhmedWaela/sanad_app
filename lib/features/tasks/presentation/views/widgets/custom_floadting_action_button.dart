import 'package:flutter/material.dart';
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
        onPressed: () {
          Navigator.pushNamed(context, AddReminderView.route);
        },
        backgroundColor: const Color(0xff4CB050),
        child: const Icon(
          Icons.add,
          size: 40,
          color: AppColors.kLigthBG,
        ),
      ),
    );
  }
}
