import 'package:sanad_app/core/exports/exports.dart';

class TaskWidget extends StatelessWidget {
  const TaskWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Dismissible(
      onDismissed: (direction) {},
      key: const Key('a'),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        width: AppDimensions.screenWidth,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.kSoftWhite,
          boxShadow: const [
            BoxShadow(
              color: Color(0x40000000),
              offset: Offset(0, 4),
              blurRadius: 5.6,
            ),
          ],
        ),
        child: Row(
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Flutter Session',
                      style: AppTextStyles.textStyle16W700.copyWith(
                        color: AppColors.kJetBlack,
                      ),
                    ),
                    const SizedBox(
                      width: 9,
                    ),
                    SvgPicture.asset(
                      AppAssets.bellSvgPath,
                      colorFilter: const ColorFilter.mode(
                        AppColors.kMediumGrey,
                        BlendMode.srcIn,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  'Reminder',
                  style: AppTextStyles.textStyle12W400,
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    SvgPicture.asset(AppAssets.calendarSvgPath),
                    const SizedBox(
                      width: 4,
                    ),
                    const Text(
                      '2024-11-23',
                      style: AppTextStyles.textStyle12W400,
                    ),
                    const SizedBox(
                      width: 17,
                    ),
                    SvgPicture.asset(AppAssets.timeCircleSvgPath),
                    const SizedBox(
                      width: 4,
                    ),
                    const Text(
                      '20:10',
                      style: AppTextStyles.textStyle12W400,
                    ),
                  ],
                )
              ],
            ),
            const Spacer(),
            SvgPicture.asset(
              AppAssets.penSvgPath,
              height: 16,
              width: 16,
            ),
          ],
        ),
      ),
    );
  }
}
