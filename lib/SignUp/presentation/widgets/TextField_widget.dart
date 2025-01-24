import 'package:air_travel/utils/AppColors.dart';
import 'package:flutter/material.dart';

class TextFieldItem extends StatelessWidget {
  const TextFieldItem({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        fillColor: Color(0xffFAFAFA),
        filled: true,
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.GreenMain),
            borderRadius: BorderRadius.circular(12)),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.circular(12)),
        hintText: text,
        hintStyle: TextStyle(
          color: Colors.grey.withValues(alpha: 0.8),
          fontWeight: FontWeight.w400,
          fontSize: 14,
        ),
      ),
    );
  }
}
