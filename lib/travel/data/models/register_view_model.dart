import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class RegisterViewModel extends ChangeNotifier {
  final String defaultProfileImage =
      "TravelAssets/images/default_profile_picker.png";
  File? image;

  Future<void> pickImage() async {
    final picker = ImagePicker();
    final PickedFile = await picker.pickImage(source: ImageSource.gallery);
    if (PickedFile != null) {
      image = File(PickedFile.path);
      notifyListeners();
    }
  }
}
