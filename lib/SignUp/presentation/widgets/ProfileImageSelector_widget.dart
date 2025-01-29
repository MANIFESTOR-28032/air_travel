import 'dart:io';

import 'package:air_travel/travel/data/models/register_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfileimageselectorItem extends StatelessWidget {
  const ProfileimageselectorItem({
    super.key,
    required this.viewModel,
  });

  final RegisterViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: viewModel,
      builder: (context, widget) => Center(
        child: Stack(
          children: [
            CircleAvatar(
              backgroundColor: Colors.grey.withValues(alpha: 0.2),
              radius: 70,
              child: viewModel.image != null
                  ? ProfileImage(image: viewModel.image!)
                  : Image.asset(
                      viewModel.defaultProfileImage,
                      fit: BoxFit.fill,
                    ),
            ),
            Positioned(
              right: 0,
              bottom: 0,
              child: IconButton(
                padding: EdgeInsets.zero,
                icon: SvgPicture.asset(
                  "TravelAssets/icons/izmenit.svg",
                  width: 29,
                  height: 29,
                  fit: BoxFit.cover,
                ),
                onPressed: () => viewModel.pickImage(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileImage extends StatelessWidget {
  const ProfileImage({super.key, required this.image});

  final File image;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 140,
        height: 140,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(70),
          child: Image.file(image, fit: BoxFit.cover),
        ),
      ),
    );
  }
}
