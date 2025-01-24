import 'package:air_travel/utils/AppColors.dart';
import 'package:flutter/material.dart';

class ForAnimatedContainer extends StatelessWidget {
  const ForAnimatedContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 8,
      height: 8,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}

class ForAnimatedContainerGreen extends StatelessWidget {
  const ForAnimatedContainerGreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 32,
      height: 8,
      decoration: BoxDecoration(
        color: AppColors.GreenMain,
        borderRadius: BorderRadius.circular(10),
      ),
    );;
  }
}
