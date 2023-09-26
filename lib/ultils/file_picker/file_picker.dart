import 'dart:io';

import 'package:file_picker/file_picker.dart';

class BusinessPickerFile {
  Future<File?> pickSingleFile({required FileType fileType}) async {
    FilePickerResult? result =
        await FilePicker.platform.pickFiles(type: fileType);
    return result != null ? File(result.files.single.path!) : null;
  }
}
