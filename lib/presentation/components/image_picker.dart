import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

class ImageHelper {
  ImageHelper(this.context);

  final BuildContext context;
  final picker = ImagePicker();

  /// Galereyadan rasm olish va kesish
  Future<String?> getImageFromGallery() async {
    try {
      final pickedFile = await picker.pickImage(source: ImageSource.gallery);
      if (pickedFile == null) {
        print("No image selected");
        return null;
      }

      print("Picked file path: ${pickedFile.path}");
      final croppedFile = await _cropImage(pickedFile.path);

      return croppedFile;
    } catch (e, stacktrace) {
      print("Error while picking/cropping image: $e");
      print(stacktrace);
      return null;
    }
  }

  /// Kameradan rasm olish va kesish
  Future<String?> getImageFromCamera() async {
    try {
      final pickedFile = await picker.pickImage(source: ImageSource.camera);
      if (pickedFile == null) {
        print("No image selected from camera");
        return null;
      }

      print("Picked file path: ${pickedFile.path}");
      final croppedFile = await _cropImage(pickedFile.path);

      return croppedFile;
    } catch (e, stacktrace) {
      print("Error while picking/cropping image: $e");
      print(stacktrace);
      return null;
    }
  }

  /// Rasmni kesish funksiyasi (compute ishlatilmaydi)
  Future<String?> _cropImage(String imagePath) async {
    final croppedFile = await ImageCropper().cropImage(
      sourcePath: imagePath,
      compressFormat: ImageCompressFormat.jpg,
      compressQuality: 100,
      uiSettings: [
        AndroidUiSettings(
          toolbarTitle: 'processing'.tr(),
          toolbarColor: Colors.black,
          toolbarWidgetColor: Colors.white,
          initAspectRatio: CropAspectRatioPreset.original,
          lockAspectRatio: false,
        ),
        IOSUiSettings(title: 'processing'.tr()),
      ],
    );

    return croppedFile?.path;
  }

  /// Modal oynada rasm tanlash opsiyalarini ko‘rsatish
  Future<String?> showOptions() async {
    String? imagePath;

    await showCupertinoModalPopup(
      context: context,
      builder: (context) => CupertinoActionSheet(
        actions: [
          CupertinoActionSheetAction(
            child: Text('upload_to_libiry'.tr()),
            onPressed: () async {
              imagePath = await getImageFromGallery();
              if (context.mounted) {
                Navigator.of(context).pop();
              }
            },
          ),
          CupertinoActionSheetAction(
            child: Text('upload_to_camera'.tr()),
            onPressed: () async {
              imagePath = await getImageFromCamera();
              if (context.mounted) {
                Navigator.of(context).pop();
              }
            },
          ),
          CupertinoActionSheetAction(
            child: Text(
              'back'.tr(),
              style: const TextStyle(color: CupertinoColors.destructiveRed),
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );

    return imagePath;
  }
}
