import 'package:air_travel/travel/presentation/widgets/FavoritesTexts_widget.dart';
import 'package:air_travel/utils/AppColors.dart';
import 'package:flutter/material.dart';

class ShortinfoContainerItem extends StatelessWidget {
  const ShortinfoContainerItem(
      {super.key, required this.where, required this.info});

  final String where, info;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 9, vertical: 4),
      width: 398,
      height: 88,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withValues(alpha: 0.5),
            spreadRadius: 1,
            blurRadius: 1,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FavoritesTextsItem(text: where),
          Text(
            info,
            style: TextStyle(
              color: AppColors.TextColor,
              fontWeight: FontWeight.w700,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
