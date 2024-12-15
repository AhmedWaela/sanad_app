import 'package:flutter/material.dart';

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
        onPressed: () {},
        backgroundColor: const Color(0xff4CB050),
        child: const Icon(
          Icons.add,
          size: 40,
          color: Color(0xffF6FFF9),
        ),
      ),
    );
  }
}
