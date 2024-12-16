import 'package:sanad_app/core/exports/exports.dart';

class CustomReminderTextField extends StatefulWidget {
  const CustomReminderTextField({
    super.key,
    required this.label,
    required this.controller,
  });
  final String label;
  final TextEditingController controller;

  @override
  State<CustomReminderTextField> createState() =>
      _CustomReminderTextFieldState();
}

class _CustomReminderTextFieldState extends State<CustomReminderTextField> {
  TextDirection textDecoration = TextDirection.ltr;
  @override
  Widget build(BuildContext context) {
    const underlineInputBorder = UnderlineInputBorder(
        borderSide: BorderSide(color: AppColors.kPrimaryColor));
    return Container(
      padding: const EdgeInsets.only(right: 16, left: 16, bottom: 8),
      margin: const EdgeInsets.only(bottom: 16),
      height: 48,
      width: AppDimensions.screenWidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 6,
            offset: const Offset(0, 3),
            spreadRadius: 1,
          ),
        ],
        color: AppColors.kSoftWhite,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.label,
                style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: AppColors.kPrimaryColor),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(top: 7),
                child: SvgPicture.asset(
                  AppAssets.keyboardSvgPath,
                ),
              )
            ],
          ),
          Expanded(
            child: TextField(
              textDirection: textDecoration,
              onChanged: (value) {
                if (value.startsWith(RegExp(r'[\u0600-\u06FF]'))) {
                  setState(() {
                    textDecoration = TextDirection.rtl;
                  });
                } else {
                  setState(() {
                    textDecoration = TextDirection.ltr;
                  });
                }
              },
              style: const TextStyle(fontSize: 12, color: Colors.black),
              controller: widget.controller,
              cursorHeight: 20,
              cursorColor: AppColors.kPrimaryColor,
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.only(bottom: 15, right: 30),
                hintStyle: TextStyle(fontSize: 10, fontWeight: FontWeight.w400),
                focusedBorder: underlineInputBorder,
                enabledBorder: underlineInputBorder,
                border: underlineInputBorder,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
