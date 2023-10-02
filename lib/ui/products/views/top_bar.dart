import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:mannager_business/const/colors/business_colors.dart';
import 'package:mannager_business/ultils/file_picker/file_picker.dart';
import 'package:mannager_business/widget/image_icons/business_image_icon.dart';

import '../../../gen/assets.gen.dart';
import '../../../ultils/validates/validate.dart';
import '../../../widget/images/images.dart';
import '../../../widget/text_fields/custom_text_fields.dart';

class CreateProductTopbar extends StatelessWidget {
  const CreateProductTopbar({
    super.key,
    this.imageFile,
    required this.callBackUpdateImage,
  });
  final File? imageFile;
  final Function(File) callBackUpdateImage;

  @override
  Widget build(BuildContext context) {
    final businessValidate = BusinessValidate();
    final BusinessPickerFile picker = BusinessPickerFile();
    void onPickImage() async {
      final file = await picker.pickSingleFile(fileType: FileType.image);
      file != null ? callBackUpdateImage(file) : null;
    }

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _avatarWidget(onPickImage, filePicked: imageFile),
        const SizedBox(width: 10),
        Expanded(
            child: Column(
          children: [
            CustomTextField().outline(
              borderRadius: 4,
              hintText: "Nhập tên sản phẩm",
              validate: businessValidate.nullCheck,
            ),
            const SizedBox(height: 10),
            CustomTextField().outline(
              borderRadius: 4,
              hintText: "Nhập giá sản phẩm",
              sufIcon: const Text("vnđ"),
              validate: businessValidate.nullCheck,
            ),
          ],
        ))
      ],
    );
  }

  Widget _cicrleCameraPickFile() {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: const BoxDecoration(
        color: BusinessColors.white,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: BusinessColors.dark,
            offset: Offset(1.5, 1.5),
            blurRadius: 2,
          )
        ],
      ),
      child: BusinessIcon(assetGenImage: Assets.icons.cameraLight),
    );
  }

  Widget _avatarWidget(Function()? onTap, {File? filePicked}) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: onTap,
      child: Stack(
        children: [
          SizedBox(
            width: 110,
            height: 130,
            child: filePicked != null
                ? Image.file(
                    filePicked,
                    fit: BoxFit.cover,
                  )
                : BusinessImage(
                    assetName: Assets.images.pigCat.keyName,
                  ),
          ),
          Positioned(
            bottom: -5,
            right: -5,
            child: _cicrleCameraPickFile(),
          )
        ],
      ),
    );
  }
}
