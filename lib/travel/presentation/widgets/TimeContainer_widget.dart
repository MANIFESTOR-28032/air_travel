import 'package:air_travel/utils/AppColors.dart';
import 'package:flutter/material.dart';

class TimeMainItem extends StatelessWidget {
  const TimeMainItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TimeItem(time: "12"),
        SizedBox(width: 5.5),
        TimeColonItem(),
        SizedBox(width: 5.5),
        TimeItem(time: "24"),
        SizedBox(width: 5.5),
        TimeColonItem(),
        SizedBox(width: 5.5),
        TimeItem(time: "30"),
      ],
    );
  }
}

class TimeItem extends StatelessWidget {
  const TimeItem({super.key, required this.time});

  final String time;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 28,
      height: 37,
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.5),
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          color: Colors.white,
        ),
      ),
      alignment: Alignment.center,
      child: Text(
        time,
        style: TextStyle(
          color: AppColors.TextColor,
          fontWeight: FontWeight.w700,
          fontSize: 20,
        ),
      ),
    );
  }
}

class TimeColonItem extends StatelessWidget {
  const TimeColonItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      ":",
      style: TextStyle(
        color: AppColors.TextColor,
        fontSize: 24,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
