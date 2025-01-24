import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PopularPlaces extends StatelessWidget {
  const PopularPlaces({
    super.key,
    required this.image,
    required this.text,
  });

  final String image, text;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image(
            image: AssetImage(image),
            width: 104,
            height: 52,
            color: Colors.black.withValues(alpha: 0.28),
            colorBlendMode: BlendMode.color,
          ),
        ),
        Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}

