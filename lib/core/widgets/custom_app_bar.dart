import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return AppBar(
      leadingWidth: screenWidth * 0.25,
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      leading: const Padding(
        padding: EdgeInsets.only(left: 16.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.arrow_back_ios, size: 20),
            Text(
              'Back',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: Color(0xff160700),
              ),
            ),
          ],
        ),
      ),
      title: const Text(
        'Reminder',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w500,
          color: Color(0xff160700),
        ),
      ),
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
