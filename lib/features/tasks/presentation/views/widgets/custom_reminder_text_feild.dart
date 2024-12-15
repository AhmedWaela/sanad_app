import 'package:sanad_app/core/exports/exports.dart';

class CustomReminderTextField extends StatelessWidget {
  const CustomReminderTextField(
      {super.key,
      required this.label,
      this.hintText,
      this.bottomPadding,
      required this.suffixIcon,
      this.isClikableSuffix,
      required this.controller,
      this.isReadOnly});
  final String label;
  final String? hintText;
  final double? bottomPadding;
  final String suffixIcon;
  final bool? isClikableSuffix;
  final TextEditingController controller;
  final bool? isReadOnly;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 16, left: 16, bottom: bottomPadding ?? 8),
      margin: const EdgeInsets.only(bottom: 16),
      height: 48,
      width: AppDimensions.screenWidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
            color:
                Colors.black.withOpacity(0.1), // Shadow color with transparency
            blurRadius: 6, // Blur radius for soft edges
            offset: const Offset(0, 3), // Vertical shadow offset
            spreadRadius: 1, // Spread radius
          ),
        ],
        color: AppColors.kSoftWhite,
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: AppColors.kPrimaryColor),
                ),
                Expanded(
                  child: TextField(
                    readOnly: isReadOnly ?? false,
                    controller: controller,
                    cursorHeight: 25,
                    decoration: InputDecoration(
                        hintText: hintText,
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none),
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          GestureDetector(
              onTap: isClikableSuffix ?? false ? () {} : null,
              child: SvgPicture.asset(suffixIcon))
        ],
      ),
    );
  }
}
