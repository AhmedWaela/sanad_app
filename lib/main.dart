import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sanad_app/features/tasks/presentation/views/reminder_view.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const SanadApp());
}

class SanadApp extends StatelessWidget {
  const SanadApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: ReminderView.route,
      routes: {
        ReminderView.route: (BuildContext context) => const ReminderView()
      },
    );
  }
}
