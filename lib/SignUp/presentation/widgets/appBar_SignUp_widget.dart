import 'package:air_travel/utils/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class AppBarSignupWidget extends StatelessWidget
    implements PreferredSizeWidget {
  const AppBarSignupWidget({super.key, required this.text, required this.address});
  final String text,address;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.transparent,
      leading: Container(
        padding: const EdgeInsets.all(18),
        width: 28,
        height: 28,
        child: GestureDetector(
          onTap: () {
            context.go(address);
          },
          child: SvgPicture.asset(
            "TravelAssets/icons/back-arrow.svg",
            color: AppColors.GreenMain,
          ),
        ),
      ),
      title: Text(
        text,
        style: TextStyle(
          color: AppColors.TextColor,
          fontWeight: FontWeight.w700,
          fontSize: 24,
        ),
      ),
    );
  }

  @override
  Size get preferredSize =>
      const Size.fromHeight(56.0);
}
