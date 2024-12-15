import 'package:flutter/material.dart' hide TimePickerDialog;
import 'package:flutter_svg/svg.dart';
import 'package:sanad_app/core/assets/app_assets.dart';
import 'package:sanad_app/core/styles/app_text_styles.dart';
import 'package:sanad_app/core/themes/app_colors.dart';
import 'package:sanad_app/core/utils/app_dimensions.dart';
import 'package:sanad_app/features/tasks/data/repos/reminder_repo.dart';
import 'package:sanad_app/features/tasks/presentation/views/widgets/custom_reminder_text_feild.dart';
import 'package:sanad_app/features/tasks/presentation/views/widgets/custom_time_picker.dart';

class AddReminderViewBody extends StatelessWidget {
  const AddReminderViewBody({super.key});

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
              label: 'Title',
            ),
            CustomReminderTextField(
              controller: TextEditingController(),
              label: 'Description (optional)',
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16, left: 16),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Enter Date',
                        style: AppTextStyles.textStyle12W400
                            .copyWith(color: AppColors.kPrimaryColor),
                      ),
                      const Text(
                        'mm/dd/yy',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: AppColors.kMediumGrey,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () async {
                      await ReminderRepo().showDateDialog(context);
                    },
                    child: SvgPicture.asset(
                      AppAssets.calendarSvgPath,
                      height: 25,
                    ),
                  )
                ],
              ),
            ),
            const Divider(
              color: AppColors.kPrimaryColor,
            ),
            TimePickerDialog(
              initialTime: TimeOfDay.now(),
              onTimeSelected: (TimeOfDay time) {},
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 72),
              decoration: BoxDecoration(
                  color: AppColors.kPrimaryColor,
                  borderRadius: BorderRadius.circular(6)),
              height: 48,
              width: AppDimensions.screenWidth,
              child: Center(
                child: Text(
                  'Done',
                  style: AppTextStyles.textStyle16W500
                      .copyWith(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
