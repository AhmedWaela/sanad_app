import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sanad_app/core/themes/app_colors.dart';
import 'package:sanad_app/core/utils/app_dimensions.dart';
import 'package:sanad_app/features/tasks/presentation/views/reminder_view.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const SanadApp());
}

class SanadApp extends StatelessWidget {
  const SanadApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        AppDimensions.initDiementions(context);
        return GetMaterialApp(
          theme: ThemeData(
              fontFamily: 'Lato', scaffoldBackgroundColor: AppColors.kLigthBG),
          debugShowCheckedModeBanner: false,
          initialRoute: ReminderView.route,
          routes: {
            ReminderView.route: (BuildContext context) => const ReminderView()
          },
        );
      },
    );
  }
}
