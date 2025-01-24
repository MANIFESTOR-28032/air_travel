import 'package:air_travel/utils/AppColors.dart';
import 'package:flutter/material.dart';

class FavoritesTextsItem extends StatelessWidget {
  const FavoritesTextsItem({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: AppColors.TextColor,
        fontWeight: FontWeight.w700,
        fontSize: 18,
      ),
    );
  }
}
