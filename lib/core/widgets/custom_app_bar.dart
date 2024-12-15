import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: 200,
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      leading: Row(
        children: [
          const Icon(Icons.arrow_back_ios),
          SizedBox(
            width: MediaQuery.sizeOf(context).width * 4 / 375,
          ),
          const Text('Back')
        ],
      ),
      title: const Text('Reminder'),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
